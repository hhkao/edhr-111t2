* Encoding: Big5.
*中壢家商填錯修正.
if (organization_id = "033408" & idnumber = "H121370425" ) sertype = "教師".
if (organization_id = "033408" & idnumber = "J120744744" ) sertype = "教師".
if (organization_id = "033408" & idnumber = "J221679800" ) sertype = "教師".
if (organization_id = "033408" & idnumber = "C220687295" ) sertype = "教師".
if (organization_id = "033408" & idnumber = "U221141104" ) sertype = "教師".
if (organization_id = "033408" & idnumber = "Q222500292" ) sertype = "教師".
if (organization_id = "033408" & idnumber = "H224770876" ) sertype = "教師".
if (organization_id = "033408" & idnumber = "K221339311" ) sertype = "教師".
if (organization_id = "033408" & idnumber = "H121370425" ) sertype_r = "教師".
if (organization_id = "033408" & idnumber = "J120744744" ) sertype_r = "教師".
if (organization_id = "033408" & idnumber = "J221679800" ) sertype_r = "教師".
if (organization_id = "033408" & idnumber = "C220687295" ) sertype_r = "教師".
if (organization_id = "033408" & idnumber = "U221141104" ) sertype_r = "教師".
if (organization_id = "033408" & idnumber = "Q222500292" ) sertype_r = "教師".
if (organization_id = "033408" & idnumber = "H224770876" ) sertype_r = "教師".
if (organization_id = "033408" & idnumber = "K221339311" ) sertype_r = "教師".
if (organization_id = "033408" & idnumber = "H121370425" ) teacher = 1.
if (organization_id = "033408" & idnumber = "J120744744" ) teacher = 1.
if (organization_id = "033408" & idnumber = "J221679800" ) teacher = 1.
if (organization_id = "033408" & idnumber = "C220687295" ) teacher = 1.
if (organization_id = "033408" & idnumber = "U221141104" ) teacher = 1.
if (organization_id = "033408" & idnumber = "Q222500292" ) teacher = 1.
if (organization_id = "033408" & idnumber = "H224770876" ) teacher = 1.
if (organization_id = "033408" & idnumber = "K221339311" ) teacher = 1.
if (organization_id = "033408" & idnumber = "H121370425" ) sertypev = 2.
if (organization_id = "033408" & idnumber = "J120744744" ) sertypev = 2.
if (organization_id = "033408" & idnumber = "J221679800" ) sertypev = 2.
if (organization_id = "033408" & idnumber = "C220687295" ) sertypev = 2.
if (organization_id = "033408" & idnumber = "U221141104" ) sertypev = 2.
if (organization_id = "033408" & idnumber = "Q222500292" ) sertypev = 2.
if (organization_id = "033408" & idnumber = "H224770876" ) sertypev = 2.
if (organization_id = "033408" & idnumber = "K221339311" ) sertypev = 2.
EXECUTE.

* Encoding: UTF-8.
*學校名稱.
VARIABLE LABELS edu_name2 '學校名稱'.
*學校公私立.
VARIABLE LABELS edu3 '公私立'.
VALUE LABELS  edu3 1'國立' 2'縣市立' 3'私立'.
*高中部與中學部.
VARIABLE LABELS unit2 '高中部與中學部'.
VALUE LABELS unit2 1'高中部' 2'中學部'.
*服務身份別.
VARIABLE LABELS sertypev '服務身份別'.
VALUE      LABELS sertypev 1 '校長' 2 '教師' 3 '主任教官' 4 '教官' 5 '族語老師' 6 '運動教練'.
*聘任類別.
VARIABLE LABELS emptypev '聘任類別'.
VALUE      LABELS emptypev 1 '專任' 2 '兼任' 3 '代理' 4 '長期代課' 5 '專職族語老師' 6 '鐘點教師' 7 '約聘僱' 8 '約用' 9 '派遣'.
*性別.
VARIABLE LABELS  gender '性別'. 
VALUE LABELS  gender 1'男性' 2'女性'.
*年齡.
VARIABLE LABELS age '年齡'.
VARIABLE LABELS age5 '年齡'.
VALUE LABELS age5 '1'"未滿20歲" '2'"20至未滿30歲" '3'"30至未滿40歲" '4' "40至未滿50歲" '5' "50至未滿60歲" '6' "60歲以上".
*外國籍.
VARIABLE LABELS  foreign '國籍別'.
VALUE LABELS foreign 0'本國籍' 1'外國籍'.
*身心障礙.
VARIABLE LABELS  implcls '身心障礙身分'.
VALUE LABELS Implcls 'N' "非身心障礙人士" 'Y' "身心障礙人士".
*主聘單位.
VARIABLE LABELS joiteacher '合聘教師'.
VALUE      LABELS joiteacher 1 "主聘教師" 2 "從聘教師" 'N' "其他教師".
VARIABLE LABELS joiteacherv '合聘教師'.
VALUE      LABELS joiteacherv 1 "主聘教師" 2 "從聘教師" '3' "其他教師".
*留職停薪原因.
VARIABLE LABELS levpay '留職停薪原因'.
VALUE      LABELS levpay 'NA' "無留職停薪".
*借調類別.
VARIABLE LABELS brtype '借調類別'.
VALUE      LABELS brtype '借調至公務機關' "借調" 'NA' "無借調".
*留職停薪、借調、商借情形.
*RECODE out_of_job (0 = 4) INTO out_of_job.
*EXECUTE.
*VARIABLE LABELS out_of_job '留職停薪、借調、商借情形'.
*VALUE      LABELS out_of_job 4'無留職停薪、借調、商借情形的教師' 1'留職停薪' 2'借調' 3 '商借'.
*代理類別.
VARIABLE LABELS pxytype '代理類別'.
VALUE      LABELS pxytype 'NA' "非代理".
*專任輔導教師.
VARIABLE LABELS counselor '專任輔導教師身分'.
VALUE      LABELS counselor 'Y' "專任輔導教師" 'N' "其他教師".
*特教班專任教師.
VARIABLE LABELS speteacher '特教班專職教師身分'.
VALUE      LABELS speteacher 'Y' "特教班專職教師" 'N' "其他專職教師".
*專業及技術教師.
VARIABLE LABELS skillteacher '專業及技術教師身分'.
VALUE      LABELS skillteacher 'Y' "專業及技術教師" 'N' "其他專任教師".
*業界專家(業師).
VARIABLE LABELS expecter '業界專家身分'.
VALUE      LABELS expecter 'Y' "業界專家(業師)" 'N' "其他高中部與中學部教員".
VARIABLE LABELS expecterv '業界專家身分'.
VALUE      LABELS expecterv 1 "業界專家(業師)" 2 "其他高中部與中學部教員".
*聘任單位.
*RECODE empunit ('高中部日間部'=1) ('高中部進修部'=1) ('高中部'=1) ('中學部'=2) (ELSE=0) INTO unit2.
VARIABLE LABELS  unit2 '不分聘任別'.
EXECUTE.
VALUE      LABELS unit2 1 "高中部" 2"中學部" 0 "其他行政單位".
*聘任單位2.
RECODE unit2 (1 2=1) (0=0)  INTO unit.
*原住民族語老師.
VARIABLE LABELS  indilangteacher '原住民族語老師身分'. 
VALUE LABELS  indilangteacher 1'原住民族語老師' 2'其他教員'.
*有業界專家的那些學校的專任及代理專業群科教師.
VARIABLE LABELS  areadepteacher '專任及代理專業群科教師'. 
VALUE LABELS  areadepteacher 1'專任及代理專業群科教師'.
*有業界專家的那些學校的其他兼任教師(不含業界專家)人數，且其為專業群科教師.
VARIABLE LABELS   concurrteacher '兼任專業群科教師(不含業界專家)'. 
VALUE LABELS  concurrteacher 1'兼任專業群科教師(不含業界專家)'.
VARIABLE LABELS
unit "高中部/中學部"
teacher "教師"
dta_teacher "資料來源"
area "縣市別"
mainsubv "主要任教科別"
schooltype "學校類型".
VALUE LABELS unit 1'高中部/中學部'.
VALUE LABELS teacher 1'教師'.
VALUE LABELS  dta_teacher 1'教員' 2'職員(工)'.
VALUE LABELS
area
1 "新北市"
2 "臺北市"
3 "桃園市"
4 "臺中市"
5 "臺南市"
6 "高雄市"
7 "宜蘭縣"
8 "新竹縣"
9 "苗栗縣"
10 "彰化縣"
11 "南投縣"
12 "雲林縣"
13 "嘉義縣"
14 "屏東縣"
15 "臺東縣"
16 "花蓮縣"
17 "澎湖縣"
18 "基隆市"
19 "新竹市"
20 "嘉義市"
21 "金門縣"
22 "連江縣"/
mainsubv
01 "語文-國語文"
02 "語文-英語文"
03 "語文-第二外國語文"
04 "健康與體育"
05 "數學"
06 "科技"
07 "綜合活動"
08 "藝術"
09 "社會"
10 "自然科學"
11 "全民國防教育"
21 "機械群"
22 "動力機械群"
23 "化工群"
24 "電機與電子群"
25 "土木與建築群"
26 "商業與管理群"
27 "外語群"
28 "設計群"
29 "藝術群"
30 "農業群"
31 "食品群"
32 "餐旅群"
33 "家政群"
34 "海事群"
35 "水產群"
41 "特殊教育"
42 "輔導"
43 "校訂必修課程"
44 "選修課程"
45 "團體活動時間"
46 "彈性學習時間"/
schooltype
1 "普"
2 "專"
3 "普+專"
4 "普+國中"
5 "專+國中"
6 "普+專+國中".
execute.

VARIABLE LABELS  indigenous '原住民身分'. 
VALUE LABELS  indigenous 0'一般' 1'平地原住民' 2'山地原住民'.
VARIABLE LABELS  indigenous2 '原住民族別'. 
VARIABLE LABELS  indigenous3 '原住民身分'. 
VALUE LABELS  indigenous3 1'原住民' 2'非原住民'.

RECODE emptypev (1 3 = 1) (ELSE = 0) INTO full_emp.
EXECUTE.
VARIABLE LABELS 
full_emp "專職(專任及代理)".
VALUE LABELS full_emp 1'專職(專任及代理)'.
execute.


*一、教職員工年齡與性別.
    *(一)各聘任別教職員工年齡結構.
*表 高中部及中學部專任教學人員年齡結構(分布、平均數、標準差).
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專(兼)任職員(工)'.
CTABLES /VLABELS VARIABLES=unit dta_teacher DISPLAY=NONE
  /TABLE area + schooltype
  [C] BY dta_teacher > unit > emptypev > age  [S][MEAN F40.2, STDDEV '標準差' F40.2, MINIMUM F40.2, MAXIMUM F40.2, COUNT '人數' COMMA40.0] 
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任教學人員年齡結構(平均數、標準差)'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「出生年月日」。'.

VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專(兼)任職員(工)'.
CTABLES /VLABELS VARIABLES=unit dta_teacher teacher DISPLAY=NONE
  /TABLE area + schooltype  [C] BY emptypev > dta_teacher > unit > age5  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=age5  ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE 
  /TITLES 
    TITLE = '表 高中部及中學部專任教學人員年齡結構(分布)'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「出生年月日」。'.


*表 高中部及中學部專任教師年齡結構(分布、平均數、標準差).
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專(兼)任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit teacher DISPLAY=NONE
  /TABLE area + schooltype
  [C] BY dta_teacher > unit > emptypev > teacher > age  [S][MEAN F40.2, STDDEV '標準差' F40.2, MINIMUM F40.2, MAXIMUM F40.2, COUNT '人數' COMMA40.0] 
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任教師年齡結構(平均數、標準差)'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「出生年月日」。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專(兼)任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher teacher DISPLAY=NONE
  /TABLE area + schooltype  [C] BY emptypev > teacher > unit > age5  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=age5  ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任教師年齡結構(分布)'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「出生年月日」。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .
*NEW.
*表 高中部及中學部代理教師年齡結構(分布、平均數、標準差).
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專(兼)任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher teacher unit DISPLAY=NONE
  /TABLE area + schooltype
  [C] BY  unit > emptypev > teacher > age  [S][MEAN F40.2, STDDEV '標準差' F40.2, MINIMUM F40.2, MAXIMUM F40.2, COUNT '人數' COMMA40.0]
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[3] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE 
  /TITLES 
    TITLE = '表 高中部及中學部代理教師年齡結構(平均數、標準差)'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「出生年月日」。'.

VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專(兼)任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher teacher DISPLAY=NONE
  /TABLE area + schooltype  [C] BY unit > emptypev > teacher > age5  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=age5  ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=emptypev[3] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE 
  /TITLES 
    TITLE = '表 高中部及中學部代理教師年齡結構(分布)'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「出生年月日」。'.

*4. 高中部及中學部專(兼)任職員年齡結構(分布、平均數、標準差).
VALUE LABELS  dta_teacher 1'高中部與中學部專任教員' 2'高中部與中學部專任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
  /TABLE area + schooltype
  [C] BY dta_teacher > unit > emptypev > age  [S][MEAN F40.2, STDDEV '標準差' F40.2, MINIMUM F40.2, MAXIMUM F40.2, COUNT '人數' COMMA40.0] 
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=dta_teacher[2] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任職員(工)年齡結構(平均數、標準差)'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：職員(工)資料表的欄位「出生年月日」。'.

VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專(兼)任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit teacher DISPLAY=NONE
  /TABLE area + schooltype  [C] BY emptypev > dta_teacher > unit > age5  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=age5  ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[2] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任職員(工)年齡結構(分布)'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「出生年月日」。'.


    *(二)各聘任別教職員工性別比例.
*表 高中部及中學部專任教學人員性別.
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專(兼)任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit unit2  DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher > unit > emptypev > gender  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= gender       ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任教學人員性別比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「國民身分證統一編號/外來人口統一證號」。'.

*表 高中部及中學部專任教師性別.
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專(兼)任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit unit2 teacher  DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher > unit > emptypev > teacher> gender  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= gender       ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任教師性別比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「國民身分證統一編號/外來人口統一證號」。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

*表 高中部及中學部代理教師性別.
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專(兼)任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit unit2 teacher  DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher > unit > emptypev > teacher> gender  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= gender       ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[3] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部代理教師性別比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「國民身分證統一編號/外來人口統一證號」。'.


*3. 高中部及中學部專(兼)任職員性別.
VALUE LABELS  dta_teacher 1'高中部與中學部專任教員' 2'高中部與中學部專任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit unit2  DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher > unit > emptypev > gender  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= gender       ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=dta_teacher[2] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任職員(工)性別比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：職員(工)資料表的欄位「國民身分證統一編號/外來人口統一證號」。'.

*二、教職員工基本資料.
    *(一)各聘任別教職員工具原住民身分比例.
        *專任教員.
CTABLES /VLABELS VARIABLES=dta_teacher unit unit2  DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher > unit > emptypev > indigenous3  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= indigenous3       ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部具原住民身分專任教學人員人數及其占高中部及中學部全體專任教學人員比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「是否具原住民籍」。'.
        *專任教師.
CTABLES /VLABELS VARIABLES=dta_teacher unit unit2  DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher > unit > teacher > emptypev > indigenous3  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= indigenous3       ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部具原住民身分專任教師人數及其占高中部及中學部全體專任教師比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「是否具原住民籍」。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

        *專任職員(工).
CTABLES /VLABELS VARIABLES=dta_teacher unit unit2  DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher > unit > emptypev > indigenous3  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= indigenous3       ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[2] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部具原住民身分專任職員(工)人數及其占高中部及中學部全體專任職員(工)比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「是否具原住民籍」。'.

    *(二).各聘任別教職員工身心障礙比例.
*表 高中部及中學部專任身心障礙教學人員.
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專(兼)任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > unit > emptypev >  implcls  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= implcls       ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部身心障礙專任教學人員人數及其占高中部及中學部全體專任教學人員比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「是否為身心障礙人士」。'.

*表 高中部及中學部專任身心障礙教師.
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專(兼)任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > unit > emptypev > teacher > implcls  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= implcls       ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE 
  /TITLES 
    TITLE = '表 高中部及中學部身心障礙專任教師人數及其占高中部及中學部全體專任教師比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「是否為身心障礙人士」。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

*7. 高中部及中學部專兼任身心障礙職員.
VALUE LABELS  dta_teacher 1'高中部與中學部專任教員' 2'高中部與中學部專任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > unit > emptypev >  implcls  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= implcls       ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=dta_teacher[2] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部身心障礙專任職員(工)人數及其占高中部及中學部全體專任職員(工)比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：職員(工)資料表的欄位「是否為身心障礙人士」。'.

    *(三)外國籍教職員工比例.
*表 高中部及中學部專(兼)任外籍教員.
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專(兼)任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher > unit > foreign  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= foreign       ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部外國籍教學人員人數及其占高中部及中學部全體教學人員比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「國籍別」。'.

*表 高中部及中學部專(兼)任外籍教師.
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專(兼)任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher > unit > teacher > foreign  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES= foreign       ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE 
  /TITLES 
    TITLE = '表 高中部及中學部外國籍教師人數及其占高中部及中學部全體教師比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「國籍別」。'.

*5. 高中部及中學部專兼任外籍職員(工).
VALUE LABELS  dta_teacher 1'高中部與中學部專任教員' 2'高中部與中學部專任職員(工)'.
CTABLES /VLABELS VARIABLES=unit dta_teacher DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher> unit > foreign  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= foreign       ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=dta_teacher[2] EMPTY=EXCLUDE
 /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部外籍職員(工)人數及其占高中部及中學部全體職員(工)比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：職員(工)資料表的欄位「國籍別」。'.

