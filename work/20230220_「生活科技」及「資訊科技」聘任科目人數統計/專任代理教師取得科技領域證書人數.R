rm(list=ls())

city <- readxl :: read_excel("\\\\192.168.110.244\\share_tmp\\給修恒\\R\\category\\c_city.xls")
school <- readxl :: read_excel("\\\\192.168.110.244\\share_tmp\\給修恒\\R\\category\\c_school.xls")


#讀檔 - 110國立學校
teacher <- read_excel("\\\\192.168.110.244\\share_tmp\\給修恒\\1111\\edhr-111t1\\dta\\edhr_111t1-202210\\1101公立學校及1102私立學校_人事資料整合.xlsx")

#只看國立學校
teacher_110 <- teacher %>% 
  mutate(authority = if_else(substr(organization_id, 3, 3) == "0", "國立", "")) %>%
  subset(authority == "國立") %>% #只看國立
  subset(sertype == "教師") %>% #只看教師
  subset(empunit %in% c("高中部日間部", "高中部進修部", "中學部")) %>% #只看高中部及中學部
  subset(emptype %in% c("專任", "代理")) %>% #只看專任、代理
  left_join(city, by = "organization_id") %>%
  left_join(school, by = "organization_id") %>%
  select(c("organization_id", "school", "authority", "city", "sertype", "emptype", "empunit", "emsub")) %>%
  mutate(year = "110")
  



#讀檔 - 111國立學校
#資料讀取#
edhr <- dbConnect(odbc::odbc(), "CHER01-EDHR-NEW", timeout = 10)

#請輸入本次填報設定檔標題(字串需與標題完全相符，否則會找不到)
title <- "111學年度上學期高級中等學校教育人力資源資料庫（公立學校人事）"

department <- "人事室"

#讀取審核同意之學校名單
list_agree <- dbGetQuery(edhr, 
                         paste("
SELECT DISTINCT b.id AS organization_id , 1 AS agree
FROM [plat5_edhr].[dbo].[teacher_fillers] a 
LEFT JOIN 
(SELECT a.reporter_id, c.id
FROM [plat5_edhr].[dbo].[teacher_fillers] a LEFT JOIN [plat5_edhr].[dbo].[teacher_reporters] b ON a.reporter_id = b.id
LEFT JOIN [plat5_edhr].[dbo].[organization_details] c ON b.organization_id = c.organization_id
) b ON a.reporter_id = b.reporter_id
WHERE a.agree = 1 AND department_id = (SELECT id FROM [plat5_edhr].[dbo].[teacher_departments]
                                        WHERE report_id = (SELECT id FROM [plat5_edhr].[dbo].[teacher_reports]
                                                            WHERE title = '", title, "'))", sep = "")
) %>%
  distinct(organization_id, .keep_all = TRUE)

#讀取教員資料表名稱
teacher_tablename <- dbGetQuery(edhr, 
                                paste("
SELECT [name] FROM [plat5_edhr].[dbo].[row_tables] 
	where sheet_id = (SELECT [id] FROM [plat5_edhr].[dbo].[row_sheets] 
						          where file_id = (SELECT field_component_id FROM [plat5_edhr].[dbo].[teacher_datasets] 
											                  WHERE title = '教員資料表' AND department_id = (SELECT id FROM [plat5_edhr].[dbo].[teacher_departments] 
																						                                              WHERE title = '", department, "' AND  report_id = (SELECT id FROM [plat5_edhr].[dbo].[teacher_reports] 
																												                                                                                      WHERE title = '", title, "'))))", sep = "")
) %>% as.character()

#讀取教員資料表
teacher <- dbGetQuery(edhr, 
                      paste("SELECT * FROM [rows].[dbo].[", teacher_tablename, "] WHERE deleted_at IS NULL", sep = "")
) %>%
  subset(select = -c(id, created_at, deleted_at, updated_by, created_by, deleted_by))

#欄位名稱更改為設定的欄位代號
col_names <- dbGetQuery(edhr, "SELECT id, name, title FROM [plat5_edhr].[dbo].[row_columns]")
col_names$id <- paste("C", col_names$id, sep = "")
for (i in 2 : dim(teacher)[2]) #從2開始是因為第一的欄位是update_at
{
  colnames(teacher)[i] <- col_names$name[grep(paste(colnames(teacher)[i], "$", sep = ""), col_names$id)]
}
#格式調整
teacher$gender <- formatC(teacher$gender, dig = 0, wid = 1, format = "f", flag = "0")
teacher$birthdate <- formatC(teacher$birthdate, dig = 0, wid = 7, format = "f", flag = "0")
teacher$onbodat <- formatC(teacher$onbodat, dig = 0, wid = 7, format = "f", flag = "0")
teacher$desedym <- formatC(teacher$desedym, dig = 0, wid = 4, format = "f", flag = "0")
teacher$beobdym <- formatC(teacher$beobdym, dig = 0, wid = 4, format = "f", flag = "0")
teacher$organization_id <- formatC(teacher$organization_id, dig = 0, wid = 6, format = "f", flag = "0")

#只留下審核通過之名單
teacher <- merge(x = teacher, y = list_agree, by = "organization_id", all.x = TRUE) %>%
  subset(agree == 1) %>%
  subset(select = -c(updated_at, agree))

#只看國立學校
teacher_111 <- teacher %>% 
  mutate(authority = if_else(substr(organization_id, 3, 3) == "0", "國立", "")) %>%
  subset(authority == "國立") %>% #只看國立
  subset(sertype == "教師") %>% #只看教師
  subset(empunit %in% c("高中部日間部", "高中部進修部", "中學部")) %>% #只看高中部及中學部
  subset(emptype %in% c("專任", "代理")) %>% #只看專任、代理
  left_join(city, by = "organization_id") %>%
  left_join(school, by = "organization_id") %>%
  select(c("organization_id", "school", "authority", "city", "sertype", "emptype", "empunit", "emsub")) %>%
  mutate(year = "111")

teacher <- bind_rows(teacher_110, teacher_111)

# 聘任科目為「生活科技」包含：
# 生活科技
# 生活科技科
# 生活科技(工藝)
# 工藝(生活科技)
# 科技領域生活科技
# 生活科技、電子計算機
# 電腦、生活科技
# 生活科技(工藝)科
# 
# 
# 聘任科目為「資訊科技」包含：
# 資訊科技
# 資訊
# 資訊科技概論
# 科技領域資訊科技主修專長
# 資訊概論科
# 雙語資訊科技
# 中等學校資訊科

teacher$tech <- if_else(teacher$emsub %in% c("生活科技", "生活科技科", "生活科技(工藝)", "工藝(生活科技)", "科技領域生活科技", "生活科技、電子計算機", "電腦、生活科技", "生活科技(工藝)科"), "生活科技", 
                        if_else(teacher$emsub %in% c("資訊科技", "資訊", "資訊科技概論", "科技領域資訊科技主修專長", "資訊概論科", "雙語資訊科技", "中等學校資訊科"), "資訊科技", ""))



teacher_tech <- teacher %>%
  subset(tech %in% c("生活科技", "資訊科技"))

teacher_tech$category <- case_when(
  teacher_tech$tech == "生活科技" & teacher_tech$year == "110" & teacher_tech$emptype == "代理" ~ "生活科技_110學年度_代理教師",
  teacher_tech$tech == "生活科技" & teacher_tech$year == "110" & teacher_tech$emptype == "專任" ~ "生活科技_110學年度_專任教師",
  teacher_tech$tech == "生活科技" & teacher_tech$year == "111" & teacher_tech$emptype == "代理" ~ "生活科技_111學年度_代理教師",
  teacher_tech$tech == "生活科技" & teacher_tech$year == "111" & teacher_tech$emptype == "專任" ~ "生活科技_111學年度_專任教師",
  teacher_tech$tech == "資訊科技" & teacher_tech$year == "110" & teacher_tech$emptype == "代理" ~ "資訊科技_110學年度_代理教師",
  teacher_tech$tech == "資訊科技" & teacher_tech$year == "110" & teacher_tech$emptype == "專任" ~ "資訊科技_110學年度_專任教師",
  teacher_tech$tech == "資訊科技" & teacher_tech$year == "111" & teacher_tech$emptype == "代理" ~ "資訊科技_111學年度_代理教師",
  teacher_tech$tech == "資訊科技" & teacher_tech$year == "111" & teacher_tech$emptype == "專任" ~ "資訊科技_111學年度_專任教師",
  TRUE ~ ""
)

teacher_tech$category  <- factor(teacher_tech$category, 
                                 levels = c("生活科技_110學年度_代理教師", "生活科技_110學年度_專任教師", "生活科技_111學年度_代理教師", "生活科技_111學年度_專任教師", "資訊科技_110學年度_代理教師", "資訊科技_110學年度_專任教師", "資訊科技_111學年度_代理教師", "資訊科技_111學年度_專任教師"), 
                                 labels = c("生活科技_110學年度_代理教師", "生活科技_110學年度_專任教師", "生活科技_111學年度_代理教師", "生活科技_111學年度_專任教師", "資訊科技_110學年度_代理教師", "資訊科技_110學年度_專任教師", "資訊科技_111學年度_代理教師", "資訊科技_111學年度_專任教師"))


teacher_tech$count <- 1

teacher_tech_a <- aggregate(count ~ category + organization_id, teacher_tech, sum)
output <- xtabs(count ~ organization_id + category, teacher_tech_a)

output_school <- school %>%
  left_join(city, by = "organization_id") %>%
  subset(substr(organization_id, 3, 3) == "0")

openxlsx :: write.xlsx(output, file = "C:\\edhr-111t2\\work\\專任代理教師取得科技領域證書人數_20230220.xlsx", rowNames = FALSE, overwrite = TRUE)
openxlsx :: write.xlsx(output_school, file = "C:\\edhr-111t2\\work\\專任代理教師取得科技領域證書人數_學校列表_20230220.xlsx", rowNames = FALSE, overwrite = TRUE)
