rm(list=ls())

#讀檔
drev_person <- readxl :: read_excel("\\\\192.168.110.244\\share_tmp\\給修恒\\1111\\edhr-111t1\\dta\\edhr_111t1-202210\\1101公立學校及1102私立學校_人事資料整合.xlsx")
tech <- readxl :: read_excel("C:\\edhr-111t2\\work\\科技領域第2專長個資.xlsx") %>%
  rename(idnumber = 身分證字號)
school <- readxl :: read_excel("\\\\192.168.110.244\\share_tmp\\給修恒\\R\\category\\c_school.xls")


drev_person_1 <- drev_person %>%
  select(c("organization_id", "idnumber", "sertype", "emptype", "emsub"))
tech_1 <- tech %>%
  select(c("idnumber"))

tech_person <- left_join(tech_1, drev_person_1, by = "idnumber") %>%
  left_join(school, by = "organization_id")

tech_person$is_teaching <- NA
tech_person$is_teaching <- if_else(!is.na(tech_person$sertype), paste0(tech_person$school, "(", tech_person$organization_id, ")"), "")

tech_person$tech <- NA
tech_person$tech <- if_else(tech_person$emsub %in% c("生活科技", "資訊科技", "資訊"), "是", 
                            if_else(tech_person$is_teaching == "", "無資料", "否"))

unique(tech_person$emsub)


output <- left_join(tech, tech_person, by = "idnumber") %>%
  select(-c("organization_id", "school")) %>%
  rename(服務身分別 = sertype, 聘任科別 = emsub, 聘任類別 = emptype, '110學年度是否於高級中等學校任教？' = is_teaching, '110學年度是否有實際從事科技領域教學(請填寫是、否或無資料)' = tech)
openxlsx :: write.xlsx(output, file = "C:\\edhr-111t2\\work\\科技領域第2專長個資_20230208.xlsx", rowNames = FALSE, overwrite = TRUE)
