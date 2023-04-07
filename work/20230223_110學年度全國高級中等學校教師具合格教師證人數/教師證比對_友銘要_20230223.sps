* Encoding: UTF-8.
GET DATA /TYPE=XLSX
  /FILE='C:\edhr-111t1\dta\edhr_111t1-202210\edhr-110t1-公立.xlsx'
  /SHEET=name 'Sheet1'
  /CELLRANGE=full
  /READNAMES=on
  /ASSUMEDSTRWIDTH=32767.
EXECUTE.

ALTER TYPE name (a41).
ALTER TYPE idnumber (a12).
ALTER TYPE nation (a26).
ALTER TYPE ddegreen1 (a45).
ALTER TYPE ddegreeu1 (a63).
ALTER TYPE ddegreeg1 (a97).
ALTER TYPE ddegreeu2 (a32).
ALTER TYPE ddegreeg2 (a39).
ALTER TYPE mdegreeu1 (a69).
ALTER TYPE mdegreeg1 (a96).
ALTER TYPE mdegreen2 (a21).
ALTER TYPE mdegreeg2 (a51).
ALTER TYPE bdegreen1 (a39).
ALTER TYPE bdegreeu1 (a74).
ALTER TYPE bdegreeg1 (a95).
ALTER TYPE bdegreen2 (a13).
ALTER TYPE bdegreeu2 (a45).
ALTER TYPE bdegreeg2 (a45).
ALTER TYPE adegreeu1 (a81).
ALTER TYPE adegreen2 (a6).
ALTER TYPE adegreeu2 (a44).
ALTER TYPE adegreeg2 (a21).
ALTER TYPE emsub (a73).
ALTER TYPE admintitle1 (a42).
ALTER TYPE adminunit1 (a36).
ALTER TYPE admintitle2 (a33).
ALTER TYPE adminunit2 (a30).
ALTER TYPE admintitle3 (a63).
ALTER TYPE adminunit3 (a39).
ALTER TYPE leave (a20).
ALTER TYPE levpay (a39).
ALTER TYPE brtype (a30).
ALTER TYPE negle (a21).
ALTER TYPE edu_name (a81).
ALTER TYPE empunitv (a18).
ALTER TYPE location_type (a18).
ALTER TYPE uid (a12).

SAVE OUTFILE='C:\edhr-111t1\dta\edhr_111t1-202210\edhr-110t1-公立.sav'.
EXECUTE.

GET DATA /TYPE=XLSX
  /FILE='C:\edhr-111t1\dta\edhr_111t1-202210\edhr-110t2-私立.xlsx'
  /SHEET=name 'Sheet1'
  /CELLRANGE=full
  /READNAMES=on
  /ASSUMEDSTRWIDTH=32767.
EXECUTE.

ALTER TYPE name (a41).
ALTER TYPE idnumber (a12).
ALTER TYPE nation (a26).
ALTER TYPE ddegreen1 (a45).
ALTER TYPE ddegreeu1 (a63).
ALTER TYPE ddegreeg1 (a97).
ALTER TYPE ddegreeu2 (a32).
ALTER TYPE ddegreeg2 (a39).
ALTER TYPE mdegreeu1 (a69).
ALTER TYPE mdegreeg1 (a96).
ALTER TYPE mdegreen2 (a21).
ALTER TYPE mdegreeg2 (a51).
ALTER TYPE bdegreen1 (a39).
ALTER TYPE bdegreeu1 (a74).
ALTER TYPE bdegreeg1 (a95).
ALTER TYPE bdegreen2 (a13).
ALTER TYPE bdegreeu2 (a45).
ALTER TYPE bdegreeg2 (a45).
ALTER TYPE adegreeu1 (a81).
ALTER TYPE adegreen2 (a6).
ALTER TYPE adegreeu2 (a44).
ALTER TYPE adegreeg2 (a21).
ALTER TYPE emsub (a73).
ALTER TYPE admintitle1 (a42).
ALTER TYPE adminunit1 (a36).
ALTER TYPE admintitle2 (a33).
ALTER TYPE adminunit2 (a30).
ALTER TYPE admintitle3 (a63).
ALTER TYPE adminunit3 (a39).
ALTER TYPE leave (a20).
ALTER TYPE levpay (a39).
ALTER TYPE brtype (a30).
ALTER TYPE negle (a21).
ALTER TYPE edu_name (a81).
ALTER TYPE empunitv (a18).
ALTER TYPE location_type (a18).
ALTER TYPE uid (a12).

SAVE OUTFILE='C:\edhr-111t1\dta\edhr_111t1-202210\edhr-110t2-私立.sav'.
EXECUTE.

ADD FILES /FILE='C:\edhr-111t1\dta\edhr_111t1-202210\edhr-110t1-公立.sav'
    /FILE='C:\edhr-111t1\dta\edhr_111t1-202210\edhr-110t2-私立.sav'.
EXECUTE.


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



*學校名稱.
VARIABLE LABELS edu3 '學校名稱'.
*學校公私立.
VARIABLE LABELS edu3 '公私立'.
VALUE LABELS  edu3 1'國立' 2'縣市立' 3'私立'.
*高中部與中學部.
VARIABLE LABELS unit2 '高中部與中學部'.
VALUE LABELS unit2 1'高中部' 2'中學部'.
*聘任類別.
VARIABLE LABELS emptypev '聘任類別'.
VALUE      LABELS emptypev 1 '專任' 2 '兼任' 3 '代理' 4 '長期代課' 5 '專職族語老師' 6 '鐘點教師' 7 '約聘僱' 8 '約用'.
*最高學歷之畢業學位.
VARIABLE LABELS  level '最高學歷畢業學位別'.
VALUE LABELS   level 1 '高中職或以下學校' 3 '學士' 2 '副學士' 5 '碩士' 6 '博士'.
*本校年資（8組）.
VARIABLE LABELS tser8 '本校服務總年資'.
VALUE      LABELS tser8 1 '未滿1年' 2 '1至未滿5年' 3 '5至未滿10年' 4 '10至未滿15年' 5 '15至未滿20年' 6 '20至未滿25年' 7 '25至未滿30年' 8 '30年以上'. 
*學校服務年資（8組）.
VARIABLE LABELS tsch8 '學校服務年資'.
VALUE      LABELS tsch8 1 '未滿1年' 2 '1至未滿5年' 3 '5至未滿10年' 4 '10至未滿15年' 5 '15至未滿20年' 6 '20至未滿25年' 7 '25至未滿30年' 8 '30年以上'. 
*最高畢業學歷學校類型.
VALUE      LABELS schoolv 1 "高中職或以下學校" 2 "軍警校院" 3 "科技大學校院" 4 "一般大學校院" 5 "師範或教育大學" 6 "其他專科以上學校" 7 "國外專科以上學校". 
*取得課程諮詢教師合格證號.
VARIABLE LABELS qq '是否取得課程諮詢教師合格證號'.
VALUE LABELS qq 0'尚未取得課程諮詢教師合格證號' 1 '取得課程諮詢教師合格證號'.
*專業或技術有關之研習或研究.
VARIABLE LABELS studyv '是否完成專業或技術有關之研習或研究'.
VALUE LABELS studyv 1'完成與專業或技術有關之研習或研究' 2'尚未完成與專業或技術有關之研習或研究'.
*專業群科教師.
VARIABLE LABELS  areadepteacher_0 '專業群科教師'. 
VALUE LABELS  areadepteacher_0 1'專業群科教師'.
*專職.
RECODE emptypev (1 3 = 1) (ELSE = 0) INTO full_emp.
EXECUTE.
VARIABLE LABELS schoolv '最高學歷畢業學校類型'.
VARIABLE LABELS tser '本校服務總年資'.
*研究所以上學歷.
RECODE level (1 2 3=1)(5 6=2) INTO level2.
VARIABLE LABELS level2 '最高學歷是否為研究所以上'.
VALUE LABELS level2 1 '非研究所以上' 2 '研究所以上'.
EXECUTE.

*具備合格教師證書.
VARIABLE LABELS th "是否具備合格教師證".
VALUE LABELS th 3 '具備合格教師證' 1'不具備合格教師證'.

*選取合格樣本.
SELECT IF unit = 1 & (emptype = "專任" | emptype = "代理" | emptype = "長期代課") & sertype = "教師".
EXECUTE.


* 自訂表格.
CTABLES
  /VLABELS VARIABLES=organization_id emptypev th DISPLAY=LABEL
  /TABLE organization_id [C][COUNT F40.0] BY emptypev [C] > th [C]
  /CATEGORIES VARIABLES=organization_id ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=emptypev ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=th ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=BEFORE.
