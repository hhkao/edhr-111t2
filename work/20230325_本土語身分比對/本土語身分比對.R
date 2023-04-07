rm(list=ls())

#套件名稱
packages <- c("DBI", "odbc", "magrittr", "dplyr", "rJava", "xlsx", "RStata", "readxl", "mailR", "stringr", "haven", "openxlsx", "tidyr", "maditr", "openxlsx")

# 安裝尚未安裝的套件
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages])
}

# 載入所需套件
lapply(packages, require, character.only = TRUE)


#讀取本土語通過認證名單
local_min <- readxl :: read_excel("C:\\edhr-111t2\\work\\20230325_本土語身分比對\\112.03月本土語0807+1001+1203+1210比對名單.xlsx", sheet = "0807閩南語認證") %>%
  rename(idnumber = 身分證字號, name = 姓名) %>%
  select(name, idnumber, 證書號碼, 合格等級, 發證日期)
local_hakka <- readxl :: read_excel("C:\\edhr-111t2\\work\\20230325_本土語身分比對\\112.03月本土語0807+1001+1203+1210比對名單.xlsx", sheet = "1001客語認證") %>%
  rename(idnumber = 身分證字號, name = 姓名) %>%
  select(name, idnumber, 證書號碼, 合格等級, 腔調別, 發證日期)
local_ind <- readxl :: read_excel("C:\\edhr-111t2\\work\\20230325_本土語身分比對\\112.03月本土語0807+1001+1203+1210比對名單.xlsx", sheet = "1203原民語認證") %>%
  rename(idnumber = 身分證字號, name = 姓名) %>%
  select(name, idnumber, 證書號碼, 合格等級, 認證語別, 認證方言別, 發證日期)
local_ncku <- readxl :: read_excel("C:\\edhr-111t2\\work\\20230325_本土語身分比對\\112.03月本土語0807+1001+1203+1210比對名單.xlsx", sheet = "1210成大台語") %>%
  rename(idnumber = 身分證號, name = 姓名) %>%
  select(name, idnumber, 級別)

#讀取學校詳細資料
school_1 <- readxl :: read_excel("C:\\edhr-111t2\\work\\20230325_本土語身分比對\\111學年度全國高級中等學校教師數、班級數、學生數.xlsx", sheet = "典型高級中等學校") %>%
  rename(organization_id = 學校代碼, 任職學校校名 = 學校名稱)
school_2 <- readxl :: read_excel("C:\\edhr-111t2\\work\\20230325_本土語身分比對\\111學年度全國高級中等學校教師數、班級數、學生數.xlsx", sheet = "非典型高級中等學校") %>%
  rename(organization_id = 學校代碼, 任職學校校名 = 學校名稱)
school_3 <- readxl :: read_excel("C:\\edhr-111t2\\work\\20230325_本土語身分比對\\111學年度全國高級中等學校教師數、班級數、學生數.xlsx", sheet = "110學年度高中部有學生但111學年度沒學生學校") %>%
  rename(organization_id = 學校代碼, 任職學校校名 = 學校名稱)
school_4 <- readxl :: read_excel("C:\\edhr-111t2\\work\\20230325_本土語身分比對\\111學年度全國高級中等學校教師數、班級數、學生數.xlsx", sheet = "110學年度起僅國中部有學生學校") %>%
  rename(organization_id = 學校代碼, 任職學校校名 = 學校名稱)
school <- bind_rows(school_1, school_2, school_3, school_4)

town <- readxl :: read_excel("C:\\edhr-111t2\\work\\20230325_本土語身分比對\\111學年度全國高級中等學校教師數、班級數、學生數.xlsx", sheet = "鄉鎮市區")
town$鄉鎮市區 <- str_extract(town$地址, "(?<=[縣市]).*?[市區鄉鎮]") # 抓出鄉鎮市區
town <- town %>%
  select(代碼, 鄉鎮市區) %>%
  rename(organization_id = 代碼)


#讀取1102私立學校名單
drev_person_1102 <- readxl :: read_excel("\\\\192.168.110.244\\Plan_EDHR\\教育部高級中等學校教育人力資源資料庫建置第7期計畫(1120201_1130731)\\分析報告\\報表\\110學年度下學期高級中等學校教育人力資源資料庫（私立學校人事）_作業用.xlsx")
colname <- drev_person_1102[1, ]
colnames(drev_person_1102) <- colname
drev_person_1102 <- drev_person_1102[-1, ]

#讀取1111公立學校名單
drev_person_1111 <- readxl :: read_excel("\\\\192.168.110.244\\Plan_EDHR\\教育部高級中等學校教育人力資源資料庫建置第7期計畫(1120201_1130731)\\分析報告\\報表\\111學年度上學期高級中等學校教育人力資源資料庫（公立學校人事）_作業用.xlsx")
colname <- drev_person_1111[1, ]
colnames(drev_person_1111) <- colname
drev_person_1111 <- drev_person_1111[-1, ]

#篩選資料欄位
drev_person_1102 <- drev_person_1102 %>%
  select(c("organization_id", "idnumber", "sertype", "emptype"))
drev_person_1111 <- drev_person_1111 %>%
  select(c("organization_id", "idnumber", "sertype", "emptype"))
drev_person <- bind_rows(drev_person_1102, drev_person_1111)

#0807閩南語認證local_min
local_min_r <- left_join(local_min, drev_person, by = "idnumber")
local_min_r$sertype <- if_else(!is.na(local_min_r$organization_id) & is.na(local_min_r$sertype), "職員(工)", local_min_r$sertype)

local_min_join <- left_join(local_min_r, school, by = c("organization_id")) %>%
  left_join(town, by = "organization_id") %>%
  rename(學校代碼 = organization_id, 姓名 = name, 身分證字號 = idnumber, 服務身分別 = sertype, 聘任類別 = emptype) %>%
  select(c("學校代碼", "任職學校校名", "縣市別", "鄉鎮市區", "設立別", "偏遠地區/非山非市", "姓名", "身分證字號", "證書號碼", "合格等級", "發證日期", "服務身分別", "聘任類別"))

  #檢查重複
  local_min_join_check <- local_min_join %>%
    group_by(身分證字號) %>%
    mutate(index = n()) %>%
    filter(index > 1) %>%
    ungroup()

xlsx :: write.xlsx(local_min_join, file = "C:\\edhr-111t2\\work\\20230325_本土語身分比對\\112.03月本土語0807+1001+1203+1210比對名單_220230325.xlsx", sheetName = "0807閩南語認證", append = TRUE, showNA = FALSE)


#1001客語認證local_hakka
local_hakka_r <- left_join(local_hakka, drev_person, by = "idnumber")
local_hakka_r$sertype <- if_else(!is.na(local_hakka_r$organization_id) & is.na(local_hakka_r$sertype), "職員(工)", local_hakka_r$sertype)

local_hakka_join <- left_join(local_hakka_r, school, by = c("organization_id")) %>%
  left_join(town, by = "organization_id") %>%
  rename(學校代碼 = organization_id, 姓名 = name, 身分證字號 = idnumber, 服務身分別 = sertype, 聘任類別 = emptype) %>%
  select(c("學校代碼", "任職學校校名", "縣市別", "鄉鎮市區", "設立別", "偏遠地區/非山非市", "姓名", "身分證字號", "證書號碼", "合格等級", "腔調別", "發證日期", "服務身分別", "聘任類別"))

#檢查重複
local_hakka_join_check <- local_hakka_join %>%
  group_by(身分證字號) %>%
  mutate(index = n()) %>%
  filter(index > 1) %>%
  ungroup()

# 將日期格式轉換
local_hakka_join$發證日期 <- gsub("(\\d{4})-(\\d{2})-(\\d{2})", "\\1/\\2/\\3", local_hakka_join$發證日期)
local_hakka_join$發證日期 <- gsub("/0(\\d{1})/", "/\\1/", local_hakka_join$發證日期)

xlsx :: write.xlsx(local_hakka_join, file = "C:\\edhr-111t2\\work\\20230325_本土語身分比對\\112.03月本土語0807+1001+1203+1210比對名單_220230325.xlsx", sheetName = "1001客語認證", append = TRUE, showNA = FALSE)


#1203原民語認證local_ind
local_ind_r <- left_join(local_ind, drev_person, by = "idnumber")
local_ind_r$sertype <- if_else(!is.na(local_ind_r$organization_id) & is.na(local_ind_r$sertype), "職員(工)", local_ind_r$sertype)

local_ind_join <- left_join(local_ind_r, school, by = c("organization_id")) %>%
  left_join(town, by = "organization_id") %>%
  rename(學校代碼 = organization_id, 姓名 = name, 身分證字號 = idnumber, 服務身分別 = sertype, 聘任類別 = emptype) %>%
  select(c("學校代碼", "任職學校校名", "縣市別", "鄉鎮市區", "設立別", "偏遠地區/非山非市", "姓名", "身分證字號", "證書號碼", "合格等級", "認證語別", "認證方言別", "發證日期", "服務身分別", "聘任類別"))

#檢查重複
local_ind_join_check <- local_ind_join %>%
  group_by(身分證字號) %>%
  mutate(index = n()) %>%
  filter(index > 1) %>%
  ungroup()

xlsx :: write.xlsx(local_ind_join, file = "C:\\edhr-111t2\\work\\20230325_本土語身分比對\\112.03月本土語0807+1001+1203+1210比對名單_220230325.xlsx", sheetName = "1203原民語認證", append = TRUE, showNA = FALSE)


#1210成大台語local_ncku
local_ncku_r <- left_join(local_ncku, drev_person, by = "idnumber")
local_ncku_r$sertype <- if_else(!is.na(local_ncku_r$organization_id) & is.na(local_ncku_r$sertype), "職員(工)", local_ncku_r$sertype)

local_ncku_join <- left_join(local_ncku_r, school, by = c("organization_id")) %>%
  left_join(town, by = "organization_id") %>%
  rename(學校代碼 = organization_id, 姓名 = name, 身分證字號 = idnumber, 服務身分別 = sertype, 聘任類別 = emptype) %>%
  select(c("學校代碼", "任職學校校名", "縣市別", "鄉鎮市區", "設立別", "偏遠地區/非山非市", "身分證號", "姓名", "級別", "服務身分別", "聘任類別"))

#檢查重複
local_ncku_join_check <- local_ncku_join %>%
  group_by(身分證字號) %>%
  mutate(index = n()) %>%
  filter(index > 1) %>%
  ungroup()

xlsx :: write.xlsx(local_ncku_join, file = "C:\\edhr-111t2\\work\\20230325_本土語身分比對\\112.03月本土語0807+1001+1203+1210比對名單_220230325.xlsx", sheetName = "1210成大台語", append = TRUE, showNA = FALSE)
