* Encoding: UTF-8.
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
VALUE      LABELS sertypev 1 '校長' 2 '教師' 3 '主任教官' 4 '教官' 5 '族語老師'.
*聘任類別.
VARIABLE LABELS emptypev '聘任類別'.
VALUE      LABELS emptypev 1 '專任' 2 '兼任' 3 '代理' 4 '長期代課' 5 '專職族語老師' 6 '鐘點教師' 7 '約聘僱' 8 '約用' 9 '派遣'.
*性別.
VARIABLE LABELS  gender '性別'. 
VALUE LABELS  gender 1'男性' 2'女性'.
*年齡.
*VARIABLE LABELS age '年齡'.
*VARIABLE LABELS age5 '年齡'.
*VALUE LABELS age5 '1'"未滿20歲" '2'"20至未滿30歲" '3'"30至未滿40歲" '4' "40至未滿50歲" '5' "50至未滿60歲" '6' "60歲以上".
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
*原住民族語教師.
VARIABLE LABELS  indilangteacher '原住民族語教師身分'. 
VALUE LABELS  indilangteacher 1'原住民族語教師' 2'其他教員'.
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
42 "輔導"/
schooltype
1 "普"
2 "專"
3 "普+專"
4 "普+國中"
5 "專+國中"
6 "普+專+國中".
execute.

RECODE emptypev (1 3 = 1) (ELSE = 0) INTO full_emp.
EXECUTE.
VARIABLE LABELS 
full_emp "專職(專任及代理)".
VALUE LABELS full_emp 1'專職(專任及代理)'.
VARIABLE LABELS 
stage "教育階段".
VALUE LABELS stage 1'中等學校普通科' 2 '中等學校專業群科' 3'師資培育舊制之中等教育階段' 5'特殊教育' 6 '國民小學' 7 '幼稚園（含幼兒園）' 8'其他'.

*二、教師取得合格教師資格情形
*（二）各主要任教科別專任、代理教師取得合格教師證書情形.

CTABLES /VLABELS VARIABLES=teacher unit DISPLAY=NONE
  /TABLE stage BY  teacher > full_emp > unit > emptypev  [C][COUNT '張數' COMMA40.0, COLPCT.COUNT '欄 %'  COMMA40.1, TOTALS[COUNT '張數'  COMMA40.0, COLPCT.COUNT '欄 %'  COMMA40.1]] 
  /CATEGORIES VARIABLES= emptypev ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=stage ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=full_emp[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任與代理教師具備各專長教師證書張數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：師資培育舊制所核發之教師證書，若未能判別其教育階段者，本表歸類為「其他」。'
                    '註3：國民中學與高中普通科並列的教師證書歸屬於高級中等學校普通科；國民中學與高中專業群科並列的教師證書歸屬於高級中等學校專業群科'
                    '註4：教員資料表的欄位「國民身分證統一編號/外來人口統一證號」。教師教師證資訊參考教育部師資培育及藝術教育司提供之新舊制合格教師證名冊電子檔資料，時間涵蓋範圍包括民國111年1月31日以前的核證資料。'.

