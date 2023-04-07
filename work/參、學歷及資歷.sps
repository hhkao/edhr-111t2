* Encoding: UTF-8.
*edhr-t1-part2-index2_1.


*#delimit ;
export excel using "C:\EDHR\posted\dta\edhr_t1-201811\edhr-10711-part2-index2_1-20190215.xls" if
emptype_r == "專任" & 
unit2 <=2, firstrow(variables) nolabel replace;
#delimit cr.


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
*一、教職員工取得最高學歷情況.
    *(一)	專任教員最高學歷學位分布.

*高中部教學人員.
VALUE LABELS  dta_teacher 1'高中部專任教學人員' 2'高中部專任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit2  DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > emptypev > unit2 > level  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level          ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit2 [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部專任教學人員最高學歷(學位)結構之人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。'     
                    '註2：教員資料表「學歷資訊」各欄位。'.

*中學部教學人員.
VALUE LABELS  dta_teacher 1'中學部專任教學人員' 2'中學部專任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher  unit2 DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > emptypev > unit2 >  level  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level          ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit2 [2] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 中學部專任教學人員最高學歷(學位)結構之人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表「學歷資訊」各欄位。'.

*高中部及中學部教學人員.
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專任職員(工)'.
CTABLES /VLABELS VARIABLES=unit dta_teacher DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > emptypev > unit > level  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level          ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任教學人員最高學歷(學位)結構之人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表「學歷資訊」各欄位。'.

    *(二)	專任、長期代理教師最高學歷學位分布.

*高中部教師.
VALUE LABELS  dta_teacher 1'高中部專任教師' 2'高中部專任職員(工)'.
CTABLES /VLABELS VARIABLES=teacher unit2  DISPLAY=NONE
  /TABLE area + schooltype BY teacher > emptypev > unit2 > level  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level          ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit2 [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部專任教師最高學歷(學位)結構之人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。'     
                    '註2：教員資料表「學歷資訊」各欄位。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

*高中部代理教師.
VALUE LABELS  dta_teacher 1'高中部專任教師' 2'高中部專任職員(工)'.
CTABLES /VLABELS VARIABLES=teacher unit2  DISPLAY=NONE
  /TABLE area + schooltype BY teacher > emptypev > unit2 > level  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level          ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[3] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit2 [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部代理教師最高學歷(學位)結構之人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。'     
                    '註2：教員資料表「學歷資訊」各欄位。'.

*中學部教師.
VALUE LABELS  dta_teacher 1'中學部專任教師' 2'中學部專任職員(工)'.
CTABLES /VLABELS VARIABLES=teacher  unit2 DISPLAY=NONE
  /TABLE area + schooltype BY teacher > emptypev > unit2 >  level  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level          ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit2 [2] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 中學部專任教師最高學歷(學位)結構之人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表「學歷資訊」各欄位。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

*只有私立學校有填到中學部，但這些私立學校並沒有代理老師.
*中學部代理教師.
VALUE LABELS  dta_teacher 1'中學部專任教師' 2'中學部專任職員(工)'.
CTABLES /VLABELS VARIABLES=teacher  unit2 DISPLAY=NONE
  /TABLE area + schooltype BY teacher > emptypev > unit2 >  level  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level          ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[3] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=unit2 [2] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 中學部代理教師最高學歷(學位)結構之人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表「學歷資訊」各欄位。'.

*高中部及中學部教師.
CTABLES /VLABELS VARIABLES=unit  teacher DISPLAY=NONE
  /TABLE area + schooltype BY emptypev > teacher > unit > level  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level          ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任教師最高學歷(學位)結構之人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表「學歷資訊」各欄位。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

*高中部及中學部代理教師.
CTABLES /VLABELS VARIABLES=unit  teacher DISPLAY=NONE
  /TABLE area + schooltype BY emptypev > teacher > unit > level  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level          ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[3] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部代理教師最高學歷(學位)結構之人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表「學歷資訊」各欄位。'.

    *(三)	專任、長期代理教師最高學歷學校類型分布.

*表 教師、教官畢業於一般大學校院、科技校院、軍警校院、師範大學或教育大學之人數及比例。.
CTABLES /VLABELS VARIABLES=teacher unit2 full_emp DISPLAY=NONE
  /TABLE area + schooltype BY teacher > full_emp > unit2 > schoolv  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= schoolv     ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=full_emp[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit2 [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部專任與代理教師最高學歷之畢業學校類型分布'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表「學歷資訊」各欄位。'.

*中學部專任教學人員最高畢業學歷的學校類型    .
CTABLES /VLABELS VARIABLES=teacher unit2 full_emp DISPLAY=NONE
  /TABLE area + schooltype BY teacher > full_emp > unit2 > schoolv  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= schoolv ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=full_emp[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit2 [2] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 中學部專任與代理教師最高學歷之畢業學校類型分布'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表「學歷資訊」各欄位。'.

*高中部與中學部專任教學人員最高畢業學歷的學校類型.
CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY teacher > full_emp > unit> schoolv  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= schoolv ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=full_emp[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任與代理教師最高學歷之畢業學校類型分布'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表「學歷資訊」各欄位。'.

    *(四)	專任、長期代理教師具研究所以上學歷人數比例.

*高中部教師.
VALUE LABELS  dta_teacher 1'高中部專任教師' 2'高中部專任職員(工)'.
CTABLES /VLABELS VARIABLES=teacher unit2  DISPLAY=NONE
  /TABLE area + schooltype BY teacher > emptypev > unit2 > level2  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level2          ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit2 [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部專任教師具研究所以上學歷(學位)人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。'     
                    '註2：教員資料表「學歷資訊」各欄位。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

*高中部代理教師.
VALUE LABELS  dta_teacher 1'高中部專任教師' 2'高中部專任職員(工)'.
CTABLES /VLABELS VARIABLES=teacher unit2  DISPLAY=NONE
  /TABLE area + schooltype BY teacher > emptypev > unit2 > level2  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level2          ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[3] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit2 [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部代理教師具研究所以上學歷(學位)人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。'     
                    '註2：教員資料表「學歷資訊」各欄位。'.

*中學部教師.
VALUE LABELS  dta_teacher 1'中學部專任教師' 2'中學部專任職員(工)'.
CTABLES /VLABELS VARIABLES=teacher  unit2 DISPLAY=NONE
  /TABLE area + schooltype BY teacher > emptypev > unit2 >  level2  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level2          ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit2 [2] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 中學部專任教師具研究所以上學歷(學位)人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表「學歷資訊」各欄位。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

*只有私立學校有填到中學部，但這些私立學校並沒有代理老師.
*中學部代理教師.
VALUE LABELS  dta_teacher 1'中學部專任教師' 2'中學部專任職員(工)'.
CTABLES /VLABELS VARIABLES=teacher  unit2 DISPLAY=NONE
  /TABLE area + schooltype BY teacher > emptypev > unit2 >  level2  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level2          ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[3] EMPTY=INCLUDE
  /CATEGORIES VARIABLES=unit2 [2] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 中學部代理教師具研究所以上學歷(學位)人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表「學歷資訊」各欄位。'.

*高中部及中學部教師.
CTABLES /VLABELS VARIABLES=unit  teacher DISPLAY=NONE
  /TABLE area + schooltype BY emptypev > teacher > unit > level2  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level2          ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任教師具研究所以上學歷(學位)人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表「學歷資訊」各欄位。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

*高中部及中學部代理教師.
CTABLES /VLABELS VARIABLES=unit  teacher DISPLAY=NONE
  /TABLE area + schooltype BY emptypev > teacher > unit > level2  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level2          ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[3] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部代理教師具研究所以上學歷(學位)人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表「學歷資訊」各欄位。'.

    *(五)	專任職員工最高學歷學位分布.

*高中部職員(工).
VALUE LABELS  dta_teacher 1'高中部專任教學人員' 2'高中部專任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit2 DISPLAY=NONE
  /TABLE  area + schooltype BY dta_teacher > emptypev > unit2 > level  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level          ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher [2] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit2 [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部專任職員(工)最高學歷(學位)結構之人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：職員(工)資料表「學歷資訊」各欄位。'.

*中學部職員.
VALUE LABELS  dta_teacher 1'中學部專任教學人員' 2'中學部專任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher  unit2 DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > emptypev > unit2 >  level  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level          ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher [2] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit2 [2] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 中學部專任職員(工)最高學歷(學位)結構之人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：職員(工)資料表「學歷資訊」各欄位。'.

*高中部與中學部：職員(工).
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專任職員(工)'.
    CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
      /TABLE area + schooltype BY dta_teacher > emptypev > unit > level  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
      /CATEGORIES VARIABLES=level          ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
      /CATEGORIES VARIABLES=dta_teacher [2] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
      /TITLES 
        TITLE = '表 高中部及中學部專任職員(工)最高學歷(學位)結構之人數及比例'
        CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                        '註2：職員(工)資料表「學歷資訊」各欄位。'.

    *(六)	專任職員工最高學歷學校類型分布.

*表 職員(工)畢業於一般大學校院、科技校院、軍警校院、師範大學或教育大學之人數及比例。.
VALUE LABELS  dta_teacher 1'高中部專任教學人員' 2'高中部專任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit2 DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > emptypev > unit2 > schoolv  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= schoolv ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher [2] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit2 [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部專任職員(工)最高學歷之畢業學校類型分布'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：職員(工)資料表「學歷資訊」各欄位。'.

*中學部專任職員(工)最高畢業學歷的學校類型.
VALUE LABELS  dta_teacher 1'中學部專任教學人員' 2'中學部專任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit2 DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > emptypev > unit2 > schoolv  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= schoolv ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher [2] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit2 [2] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 中學部專任職員(工)最高學歷之畢業學校類型分布'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：職員(工)資料表「學歷資訊」各欄位。'.

*高中部與中學部專任職員(工)最高畢業學歷的學校類型.
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > emptypev > unit > schoolv  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= schoolv ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher [2] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部與中學部專任職員(工)最高學歷之畢業學校類型分布'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：職員(工)資料表「學歷資訊」各欄位。'.

    *(七)	專任職員工具研究所以上學歷人數比例.

*高中部職員(工).
VALUE LABELS  dta_teacher 1'高中部專任教學人員' 2'高中部專任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit2 DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > emptypev > unit2 > level2  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level2          ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher [2] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit2 [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部專任職員(工)具研究所以上學歷(學位)人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：職員(工)資料表「學歷資訊」各欄位。'.

*中學部職員.
VALUE LABELS  dta_teacher 1'中學部專任教學人員' 2'中學部專任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher  unit2 DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > emptypev > unit2 >  level2  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level2          ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher [2] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit2 [2] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 中學部專任職員(工)具研究所以上學歷(學位)人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：職員(工)資料表「學歷資訊」各欄位。'.

*高中部與中學部：職員(工).
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專任職員(工)'.
    CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
      /TABLE area + schooltype BY dta_teacher > emptypev > unit > level2  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
      /CATEGORIES VARIABLES=level2          ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
      /CATEGORIES VARIABLES=dta_teacher [2] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
      /TITLES 
        TITLE = '表 高中部及中學部專任職員(工)具研究所以上學歷(學位)人數及比例'
        CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                        '註2：職員(工)資料表「學歷資訊」各欄位。'.

*二、教職員工之資歷.
    *（一）各聘任別教師取得合格教師證書情況.
*具備合格教師證書.
VARIABLE LABELS th "是否具備合格教師證".
VALUE LABELS th 3 '具備合格教師證' 1'不具備合格教師證'.

        *教師.
VALUE LABELS  dta_teacher 1'高中部與中學部教學人員' 2'高中部與中學部教學人員'.
CTABLES /VLABELS VARIABLES=teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY  teacher >  unit >  th  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= th         ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部教師具教師證書人數及其占高中部及中學部全體教師比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「國民身分證統一編號/外來人口統一證號」。教師證資訊參考教育部師資培育及藝術教育司提供之新舊制合格教師證名冊電子檔資料，時間涵蓋範圍包括民國111年1月31日以前的核證資料。'.
        *專任教師.
VALUE LABELS  dta_teacher 1'高中部與中學部教學人員' 2'高中部與中學部教學人員'.
CTABLES /VLABELS VARIABLES=teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY  teacher > emptypev >  unit >  th  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= th         ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=emptypev [1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任教師具教師證書人數及其占高中部及中學部全體專任教師比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「國民身分證統一編號/外來人口統一證號」。教師證資訊參考教育部師資培育及藝術教育司提供之新舊制合格教師證名冊電子檔資料，時間涵蓋範圍包括民國111年1月31日以前的核證資料。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .
        *兼任教師.
VALUE LABELS  dta_teacher 1'高中部與中學部教學人員' 2'高中部與中學部教學人員'.
CTABLES /VLABELS VARIABLES=teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY  teacher > emptypev >  unit >  th  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= th         ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=emptypev [2] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部兼任教師具教師證書人數及其占高中部及中學部全體兼任教師比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「國民身分證統一編號/外來人口統一證號」。教師證資訊參考教育部師資培育及藝術教育司提供之新舊制合格教師證名冊電子檔資料，時間涵蓋範圍包括民國111年1月31日以前的核證資料。'.
        *代理教師.
VALUE LABELS  dta_teacher 1'高中部與中學部教學人員' 2'高中部與中學部教學人員'.
CTABLES /VLABELS VARIABLES=teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY  teacher > emptypev >  unit >  th  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= th         ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=emptypev [3] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部代理教師具教師證書人數及其占高中部及中學部全體代理教師比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「國民身分證統一編號/外來人口統一證號」。教師證資訊參考教育部師資培育及藝術教育司提供之新舊制合格教師證名冊電子檔資料，時間涵蓋範圍包括民國111年1月31日以前的核證資料。'.
        *長期代課教師.
VALUE LABELS  dta_teacher 1'高中部與中學部教學人員' 2'高中部與中學部教學人員'.
CTABLES /VLABELS VARIABLES=teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY  teacher > emptypev >  unit >  th  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= th         ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=emptypev [4] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部長期代課教師具教師證書人數及其占高中部及中學部全體長期代課教師比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「國民身分證統一編號/外來人口統一證號」。教師證資訊參考教育部師資培育及藝術教育司提供之新舊制合格教師證名冊電子檔資料，時間涵蓋範圍包括民國111年1月31日以前的核證資料。'.
        *鐘點教師.
VALUE LABELS  dta_teacher 1'高中部與中學部教學人員' 2'高中部與中學部教學人員'.
CTABLES /VLABELS VARIABLES=teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY  teacher > emptypev >  unit >  th  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= th         ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=emptypev [6] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部鐘點教師具教師證書人數及其占高中部及中學部全體鐘點教師比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「國民身分證統一編號/外來人口統一證號」。教師證資訊參考教育部師資培育及藝術教育司提供之新舊制合格教師證名冊電子檔資料，時間涵蓋範圍包括民國111年1月31日以前的核證資料。'.
        *約聘僱.
VALUE LABELS  dta_teacher 1'高中部與中學部教學人員' 2'高中部與中學部教學人員'.
CTABLES /VLABELS VARIABLES=teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY  teacher > emptypev >  unit >  th  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= th         ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=emptypev [7] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部約聘僱教師具教師證書人數及其占高中部及中學部全體約聘僱教師比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「國民身分證統一編號/外來人口統一證號」。教師證資訊參考教育部師資培育及藝術教育司提供之新舊制合格教師證名冊電子檔資料，時間涵蓋範圍包括民國111年1月31日以前的核證資料。'.
        *約用.
VALUE LABELS  dta_teacher 1'高中部與中學部教學人員' 2'高中部與中學部教學人員'.
CTABLES /VLABELS VARIABLES=teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY  teacher > emptypev >  unit >  th  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= th         ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=emptypev [8] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部約用教師具教師證書人數及其占高中部及中學部全體約用教師比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「國民身分證統一編號/外來人口統一證號」。教師證資訊參考教育部師資培育及藝術教育司提供之新舊制合格教師證名冊電子檔資料，時間涵蓋範圍包括民國111年1月31日以前的核證資料。'.

    *（二）各主要任教科別專任、代理教師取得合格教師證書情形.
        *專任教師.
VALUE LABELS  dta_teacher 1'高中部與中學部教學人員' 2'高中部與中學部教學人員'.
CTABLES /VLABELS VARIABLES=teacher unit DISPLAY=NONE
  /TABLE mainsubv BY  teacher > emptypev >  unit >  th  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= th         ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=mainsubv ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=emptypev [1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部各主要任教科別專任教師取得合格教師證書情形'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「國民身分證統一編號/外來人口統一證號」。教師證資訊參考教育部師資培育及藝術教育司提供之新舊制合格教師證名冊電子檔資料，時間涵蓋範圍包括民國111年1月31日以前的核證資料。'
                    '註3：本表人數不含未填教學資料表者'
                    '註4：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .
        *代理教師.
VALUE LABELS  dta_teacher 1'高中部與中學部教學人員' 2'高中部與中學部教學人員'.
CTABLES /VLABELS VARIABLES=teacher unit DISPLAY=NONE
  /TABLE mainsubv BY  teacher > emptypev >  unit >  th  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= th         ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=mainsubv ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=emptypev [3] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部各主要任教科別代理教師取得合格教師證書情形'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「國民身分證統一編號/外來人口統一證號」。教師證資訊參考教育部師資培育及藝術教育司提供之新舊制合格教師證名冊電子檔資料，時間涵蓋範圍包括民國111年1月31日以前的核證資料。'
                    '註3：本表人數不含未填教學資料表者'.
        *教育階段.

        *（三）特教班專職教師取得合格教師證書情形.
VALUE LABELS  dta_teacher 1'高中部與中學部教學人員' 2'高中部與中學部教學人員'.
VARIABLE LABELS speteacherv '特教班專職教師身分'.
VALUE      LABELS speteacherv 1 "特教班專職教師" 2 "其他專職教師".
CTABLES /VLABELS VARIABLES=teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY  teacher > full_emp >  unit > speteacherv >  th  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= speteacherv[1]       EMPTY=EXCLUDE TOTAL=NO LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES= th         ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=full_emp [1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部特教班專職教師取得合格教師證書情形'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「國民身分證統一編號/外來人口統一證號」。教師證資訊參考教育部師資培育及藝術教育司提供之新舊制合格教師證名冊電子檔資料，時間涵蓋範圍包括民國111年1月31日以前的核證資料。'.



    *(二)教職員工服務年資.
        *1專任教員之本校服務年資分布情形.

*表 教學人員本校服務總年資分布與結構及其人數及比例.
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > emptypev > unit > tser8  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= tser8 ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任教學人員之本校服務總年資結構（人數、分布）'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「本校服務總年資」。'.

CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > emptypev > unit > tser  [S][MEAN F40.2, STDDEV '標準差' F40.2, MINIMUM F40.2, MAXIMUM F40.2, COUNT '人數' COMMA40.0]
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任教學人員之本校服務總年資結構（平均數、標準差）'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「本校服務總年資」。'.

        *2.	專任教員之學校服務年資分布情形.

*表 教學人員學校服務年資分布與結構及其人數及比例.
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專任職員(工)'.
VARIABLE LABELS tsch8 '學校服務年資'.
CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > emptypev > unit > tsch8  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= tsch8 ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任教學人員之學校服務年資結構（人數、分布）'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「學校服務年資」。'.

VARIABLE LABELS tsch '學校服務年資'.
CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > emptypev > unit > tsch  [S][MEAN F40.2, STDDEV '標準差' F40.2, MINIMUM F40.2, MAXIMUM F40.2, COUNT '人數' COMMA40.0]
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任教學人員之學校服務年資結構（平均數、標準差）'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「學校服務年資」。'.

        *3.	專任教師之本校服務年資分布情形.

CTABLES /VLABELS VARIABLES=teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY teacher > emptypev > unit > tser8  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= tser8 ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任教師之本校服務總年資結構'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「本校服務總年資」。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

CTABLES /VLABELS VARIABLES=teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY teacher > emptypev > unit > tser  [S][MEAN F40.2, STDDEV '標準差' F40.2, MINIMUM F40.2, MAXIMUM F40.2, COUNT '人數' COMMA40.0]
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任教師之本校服務總年資結構（平均數、標準差）'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「本校服務總年資」。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

*兼任教學相關職務專任教師之本校服務總年資結構.
VALUE      LABELS teach_job 1'擔任教學相關職務'.
CTABLES /VLABELS VARIABLES=teach_job emptypev unit DISPLAY=NONE
  /TABLE area + schooltype BY teach_job > emptypev > unit > tser  [S][MEAN F40.2, STDDEV '標準差' F40.2, MINIMUM F40.2, MAXIMUM F40.2, COUNT '人數' COMMA40.0]
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teach_job [1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '高中部及中學部兼任教學相關職務專任教師之本校服務總年資結構（平均數、標準差）'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「本校服務總年資」。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

        *4.	專任教師之學校服務年資分布情形.

*表 教師學校服務年資分布與結構及其人數及比例.
VARIABLE LABELS tsch8 '學校服務年資'.
CTABLES /VLABELS VARIABLES=teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY teacher > emptypev > unit > tsch8  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= tsch8 ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任教師之學校服務年資結構（人數、分布）'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「學校服務年資」。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

VARIABLE LABELS tsch '學校服務年資'.
CTABLES /VLABELS VARIABLES=teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY teacher > emptypev > unit > tsch  [S][MEAN F40.2, STDDEV '標準差' F40.2, MINIMUM F40.2, MAXIMUM F40.2, COUNT '人數' COMMA40.0]
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任教師之學校服務年資結構（平均數、標準差）'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「學校服務年資」。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

*兼任教學相關職務專任教師之學校服務年資結構.
VALUE      LABELS teach_job 1'擔任教學相關職務'.
VARIABLE LABELS tsch8 '學校服務年資'.
CTABLES /VLABELS VARIABLES=teach_job unit DISPLAY=NONE
  /TABLE area + schooltype BY teach_job > emptypev > unit > tsch8  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= tsch8 ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teach_job [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部兼任教學相關職務專任教師之學校服務年資結構（人數、分布）'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「學校服務年資」。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

VALUE      LABELS teach_job 1'擔任教學相關職務'.
VARIABLE LABELS tsch '學校服務年資'.
CTABLES /VLABELS VARIABLES=teach_job emptypev unit DISPLAY=NONE
  /TABLE area + schooltype BY teach_job > emptypev > unit > tsch  [S][MEAN F40.2, STDDEV '標準差' F40.2, MINIMUM F40.2, MAXIMUM F40.2, COUNT '人數' COMMA40.0]
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teach_job [1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '高中部及中學部兼任教學相關職務專任教師之學校服務年資結構（平均數、標準差）'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「學校服務年資」。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

        *5.	專任職員工之本校服務年資分布情形.

*表 職員(工)本校服務總年資分布與結構之人數及比例.
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專任職員(工)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > emptypev > unit > tser8  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= tser8 ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher [2] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任職員(工)本校服務總年資結構（人數、分布）'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：職員(工)資料表的欄位「本校服務總年資」。'.

CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > emptypev > unit > tser  [S][MEAN F40.2, STDDEV '標準差' F40.2, MINIMUM F40.2, MAXIMUM F40.2, COUNT '人數' COMMA40.0]
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher [2] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任職員(工)本校服務總年資結構（平均數、標準差）'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：職員(工)資料表的欄位「本校服務總年資」。'.

        *6.	專任職員工之學校服務年資分布情形.

*表 職員(工)學校服務年資分布與結構之人數及比例.
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專任職員(工)'.
VARIABLE LABELS tsch8 '學校服務年資'.
CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > emptypev > unit > tsch8  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= tsch8 ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher [2] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任職員(工)學校服務年資結構（人數、分布）'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：職員(工)資料表的欄位「學校服務年資」。'.

VARIABLE LABELS tsch '學校服務年資'.
CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > emptypev > unit > tsch  [S][MEAN F40.2, STDDEV '標準差' F40.2, MINIMUM F40.2, MAXIMUM F40.2, COUNT '人數' COMMA40.0]
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher [2] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專任職員(工)學校服務年資結構（平均數、標準差）'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：職員(工)資料表的欄位「學校服務年資」。'.

    *(三)	其他資歷.
        *1.	專業群科專任教師完成半年以上與專業或技術有關之研習或研究之情形.

*表 專業群科專任教師完成專業與技術有關之研習或研究人數.
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專任職員(工)'.
CTABLES /VLABELS VARIABLES=areadepteacher_0 DISPLAY=NONE
  /TABLE area + schooltype BY  areadepteacher_0 >  emptypev > unit >  studyv  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= studyv         ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=areadepteacher_0 [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部專業群科專任教師完成半年以上與專業或技術有關之研習或研究人數情形'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教學資料表的欄位「是否進行與專業或技術有關之研習或研究」。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

        *2.	具課程諮詢教師資格專任教師人數及其占全體專任教師總人數比例.

*表 取得課程諮詢教師合格證號人數.
VALUE LABELS  dta_teacher 1'高中部與中學部專任教學人員' 2'高中部與中學部專任職員(工)'.
CTABLES /VLABELS VARIABLES=teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY  teacher >  emptypev > unit >  qq  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= qq         ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='小計'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit [1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部及中學部具課程諮詢教師資格之專任教師及其占全體專任教師比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教學資料表的欄位「取得課程諮詢教師合格證號」。'
                    '註3：專任教師係指「服務身分別」為教師，且「聘任類別」為專任之教員。' .

********************************************************************************************************************************************************************************************************************************************************.









*20190619新增
CTABLES /VLABELS VARIABLES=tser edu3 admin DISPLAY=NONE
  /TABLE edu_name2 + area + edu3 BY admin > tser  [S][MINIMUM F40.2, MEAN F40.2, MAXIMUM F40.2,STDDEV '標準差' F40.2, COUNT '人數' COMMA40.0]
  /CATEGORIES VARIABLES=edu3         ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=admin[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 行政人員本校服務總年資結構（續）'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「本校服務總年資」；教員資料表與職員(工)資料表的欄位「專任行政職職稱」、「專任行政職服務單位」、「兼任行政職職稱（一）~（三）」、「兼任行政職服務單位（一）~（三）」。'.
*
CTABLES /VLABELS VARIABLES=tser8 edu3  DISPLAY=NONE
  /TABLE edu_name2 + area + edu3 BY  admin > tser8  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= tser8 ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=edu3         ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=admin[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 行政人員本校服務總年資結構'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「本校服務總年資」」；教員資料表與職員(工)資料表的欄位「專任行政職職稱」、「專任行政職服務單位」、「兼任行政職職稱（一）~（三）」、「兼任行政職服務單位（一）~（三）」。'.
*
CTABLES /VLABELS VARIABLES=tser edu3 flag_admin1 admin DISPLAY=NONE
  /TABLE edu_name2 + area + edu3 BY flag_admin1 > admin > tser  [S][MINIMUM F40.2, MEAN F40.2, MAXIMUM F40.2,STDDEV '標準差' F40.2, COUNT '人數' COMMA40.0]
  /CATEGORIES VARIABLES=edu3         ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=flag_admin1[1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=admin[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 正（副）校長與一級主管本校服務總年資結構（續）'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「本校服務總年資」」；教員資料表與職員(工)資料表的欄位「專任行政職職稱」、「專任行政職服務單位」'.
*
CTABLES /VLABELS VARIABLES=tser8 edu3  flag_admin1 admin DISPLAY=NONE
  /TABLE edu_name2 + area + edu3 BY flag_admin1 > admin > tser8  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= tser8 ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=edu3         ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=flag_admin1[1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=admin[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表  正（副）校長與一級主管本校服務總年資結構'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「本校服務總年資」」；教員資料表與職員(工)資料表的欄位「專任行政職職稱」、「專任行政職服務單位」。'.
*
CTABLES /VLABELS VARIABLES=tser edu3 flag_admin2 admin DISPLAY=NONE
  /TABLE edu_name2 + area + edu3 BY flag_admin2 > admin > tser  [S][MINIMUM F40.2, MEAN F40.2, MAXIMUM F40.2,STDDEV '標準差' F40.2, COUNT '人數' COMMA40.0]
  /CATEGORIES VARIABLES=edu3         ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=flag_admin2[1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=admin[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 二級主管本校服務總年資結構（續）'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「本校服務總年資」」；教員資料表與職員(工)資料表的欄位「專任行政職職稱」、「專任行政職服務單位」'.
*
CTABLES /VLABELS VARIABLES=tser8 edu3  flag_admin2 admin DISPLAY=NONE
  /TABLE edu_name2 + area + edu3 BY flag_admin2 > admin > tser8  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= tser8 ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=edu3         ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=flag_admin2[1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=admin[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表  二級主管本校服務總年資結構'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「本校服務總年資」」；教員資料表與職員(工)資料表的欄位「專任行政職職稱」、「專任行政職服務單位」。'.
*
CTABLES /VLABELS VARIABLES=tser edu3 flag_admin3 admin DISPLAY=NONE
  /TABLE edu_name2 + area + edu3 BY flag_admin3 > admin > tser  [S][MINIMUM F40.2, MEAN F40.2, MAXIMUM F40.2,STDDEV '標準差' F40.2, COUNT '人數' COMMA40.0]
  /CATEGORIES VARIABLES=edu3         ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=flag_admin3[1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=admin[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 非主管級行政人員本校服務總年資結構（續）'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「本校服務總年資」」；教員資料表與職員(工)資料表的欄位「專任行政職職稱」、「專任行政職服務單位」'.
*
CTABLES /VLABELS VARIABLES=tser8 edu3  flag_admin3 admin DISPLAY=NONE
  /TABLE edu_name2 + area + edu3 BY flag_admin3 > admin > tser8  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES= tser8 ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=edu3         ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=flag_admin3[1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=admin[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表  非主管級行政人員本校服務總年資結構'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。' 
                    '註2：教員資料表的欄位「本校服務總年資」」；教員資料表與職員(工)資料表的欄位「專任行政職職稱」、「專任行政職服務單位」。'.

*棄稿
VALUE LABELS  dta_teacher 1'高中部專職教師' 2'高中部專職職員(工)'.
*
CTABLES /VLABELS VARIABLES=level edu3 teacher unit2  DISPLAY=NONE
  /TABLE edu_name2 + area + edu3 BY teacher > full_emp > unit2 > level  [C][COUNT '人數' COMMA40.0, ROWPCT.COUNT '列 %'  COMMA40.1, TOTALS[COUNT '人數'  COMMA40.0]] 
  /CATEGORIES VARIABLES=level          ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=edu3         ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='小計' POSITION = AFTER
  /CATEGORIES VARIABLES=teacher [1] EMPTY=EXCLUDE
   /CATEGORIES VARIABLES=full_emp[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '表 高中部專職教師最高學歷(學位)結構之人數及比例'
    CAPTION='註1：此表數據為母體資料，數值以四捨五入計算。'     
                    '註2：教員資料表「學歷資訊」各欄位。'.


