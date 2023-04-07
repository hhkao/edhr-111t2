* Encoding: UTF-8.
GET DATA /TYPE=XLSX
  /FILE='C:\edhr-111t1\dta\edhr_111t1-202210\edhr-110t1-����.xlsx'
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

SAVE OUTFILE='C:\edhr-111t1\dta\edhr_111t1-202210\edhr-110t1-����.sav'.
EXECUTE.

GET DATA /TYPE=XLSX
  /FILE='C:\edhr-111t1\dta\edhr_111t1-202210\edhr-110t2-�p��.xlsx'
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

SAVE OUTFILE='C:\edhr-111t1\dta\edhr_111t1-202210\edhr-110t2-�p��.sav'.
EXECUTE.

ADD FILES /FILE='C:\edhr-111t1\dta\edhr_111t1-202210\edhr-110t1-����.sav'
    /FILE='C:\edhr-111t1\dta\edhr_111t1-202210\edhr-110t2-�p��.sav'.
EXECUTE.


* Encoding: UTF-8.
*���c�a�Ӷ���ץ�.
if (organization_id = "033408" & idnumber = "H121370425" ) sertype = "�Юv".
if (organization_id = "033408" & idnumber = "J120744744" ) sertype = "�Юv".
if (organization_id = "033408" & idnumber = "J221679800" ) sertype = "�Юv".
if (organization_id = "033408" & idnumber = "C220687295" ) sertype = "�Юv".
if (organization_id = "033408" & idnumber = "U221141104" ) sertype = "�Юv".
if (organization_id = "033408" & idnumber = "Q222500292" ) sertype = "�Юv".
if (organization_id = "033408" & idnumber = "H224770876" ) sertype = "�Юv".
if (organization_id = "033408" & idnumber = "K221339311" ) sertype = "�Юv".
if (organization_id = "033408" & idnumber = "H121370425" ) sertype_r = "�Юv".
if (organization_id = "033408" & idnumber = "J120744744" ) sertype_r = "�Юv".
if (organization_id = "033408" & idnumber = "J221679800" ) sertype_r = "�Юv".
if (organization_id = "033408" & idnumber = "C220687295" ) sertype_r = "�Юv".
if (organization_id = "033408" & idnumber = "U221141104" ) sertype_r = "�Юv".
if (organization_id = "033408" & idnumber = "Q222500292" ) sertype_r = "�Юv".
if (organization_id = "033408" & idnumber = "H224770876" ) sertype_r = "�Юv".
if (organization_id = "033408" & idnumber = "K221339311" ) sertype_r = "�Юv".
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
*�ǮզW��.
VARIABLE LABELS edu_name2 '�ǮզW��'.
*�Ǯդ��p��.
VARIABLE LABELS edu3 '���p��'.
VALUE LABELS  edu3 1'���' 2'������' 3'�p��'.
*�������P���ǳ�.
VARIABLE LABELS unit2 '�������P���ǳ�'.
VALUE LABELS unit2 1'������' 2'���ǳ�'.
*�A�Ȩ����O.
VARIABLE LABELS sertypev '�A�Ȩ����O'.
VALUE      LABELS sertypev 1 '�ժ�' 2 '�Юv' 3 '�D���Щx' 4 '�Щx' 5 '�ڻy�Ѯv' 6 '�B�ʱнm'.
*�u�����O.
VARIABLE LABELS emptypev '�u�����O'.
VALUE      LABELS emptypev 1 '�M��' 2 '�ݥ�' 3 '�N�z' 4 '�����N��' 5 '�M¾�ڻy�Ѯv' 6 '���I�Юv' 7 '���u��' 8 '����' 9 '����'.
*�ʧO.
VARIABLE LABELS  gender '�ʧO'. 
VALUE LABELS  gender 1'�k��' 2'�k��'.
*�~��.
VARIABLE LABELS age '�~��'.
VARIABLE LABELS age5 '�~��'.
VALUE LABELS age5 '1'"����20��" '2'"20�ܥ���30��" '3'"30�ܥ���40��" '4' "40�ܥ���50��" '5' "50�ܥ���60��" '6' "60���H�W".
*�~���y.
VARIABLE LABELS  foreign '���y�O'.
VALUE LABELS foreign 0'�����y' 1'�~���y'.
*���߻�ê.
VARIABLE LABELS  implcls '���߻�ê����'.
VALUE LABELS Implcls 'N' "�D���߻�ê�H�h" 'Y' "���߻�ê�H�h".
*�D�u���.
VARIABLE LABELS joiteacher '�X�u�Юv'.
VALUE      LABELS joiteacher 1 "�D�u�Юv" 2 "�q�u�Юv" 'N' "��L�Юv".
VARIABLE LABELS joiteacherv '�X�u�Юv'.
VALUE      LABELS joiteacherv 1 "�D�u�Юv" 2 "�q�u�Юv" '3' "��L�Юv".
*�d¾���~��].
VARIABLE LABELS levpay '�d¾���~��]'.
VALUE      LABELS levpay 'NA' "�L�d¾���~".
*�ɽ����O.
VARIABLE LABELS brtype '�ɽ����O'.
VALUE      LABELS brtype '�ɽզܤ��Ⱦ���' "�ɽ�" 'NA' "�L�ɽ�".
*�d¾���~�B�ɽաB�ӭɱ���.
*RECODE out_of_job (0 = 4) INTO out_of_job.
*EXECUTE.
*VARIABLE LABELS out_of_job '�d¾���~�B�ɽաB�ӭɱ���'.
*VALUE      LABELS out_of_job 4'�L�d¾���~�B�ɽաB�ӭɱ��Ϊ��Юv' 1'�d¾���~' 2'�ɽ�' 3 '�ӭ�'.
*�N�z���O.
VARIABLE LABELS pxytype '�N�z���O'.
VALUE      LABELS pxytype 'NA' "�D�N�z".
*�M�����ɱЮv.
VARIABLE LABELS counselor '�M�����ɱЮv����'.
VALUE      LABELS counselor 'Y' "�M�����ɱЮv" 'N' "��L�Юv".
*�S�ЯZ�M���Юv.
VARIABLE LABELS speteacher '�S�ЯZ�M¾�Юv����'.
VALUE      LABELS speteacher 'Y' "�S�ЯZ�M¾�Юv" 'N' "��L�M¾�Юv".
*�M�~�Χ޳N�Юv.
VARIABLE LABELS skillteacher '�M�~�Χ޳N�Юv����'.
VALUE      LABELS skillteacher 'Y' "�M�~�Χ޳N�Юv" 'N' "��L�M���Юv".
*�~�ɱM�a(�~�v).
VARIABLE LABELS expecter '�~�ɱM�a����'.
VALUE      LABELS expecter 'Y' "�~�ɱM�a(�~�v)" 'N' "��L�������P���ǳ��Э�".
VARIABLE LABELS expecterv '�~�ɱM�a����'.
VALUE      LABELS expecterv 1 "�~�ɱM�a(�~�v)" 2 "��L�������P���ǳ��Э�".
*�u�����.
*RECODE empunit ('�������鶡��'=1) ('�������i�׳�'=1) ('������'=1) ('���ǳ�'=2) (ELSE=0) INTO unit2.
VARIABLE LABELS  unit2 '�����u���O'.
EXECUTE.
VALUE      LABELS unit2 1 "������" 2"���ǳ�" 0 "��L��F���".
*�u�����2.
RECODE unit2 (1 2=1) (0=0)  INTO unit.
*�����ڻy�Ѯv.
VARIABLE LABELS  indilangteacher '�����ڻy�Ѯv����'. 
VALUE LABELS  indilangteacher 1'�����ڻy�Ѯv' 2'��L�Э�'.
*���~�ɱM�a�����ǾǮժ��M���ΥN�z�M�~�s��Юv.
VARIABLE LABELS  areadepteacher '�M���ΥN�z�M�~�s��Юv'. 
VALUE LABELS  areadepteacher 1'�M���ΥN�z�M�~�s��Юv'.
*���~�ɱM�a�����ǾǮժ���L�ݥ��Юv(���t�~�ɱM�a)�H�ơA�B�䬰�M�~�s��Юv.
VARIABLE LABELS   concurrteacher '�ݥ��M�~�s��Юv(���t�~�ɱM�a)'. 
VALUE LABELS  concurrteacher 1'�ݥ��M�~�s��Юv(���t�~�ɱM�a)'.
VARIABLE LABELS
unit "������/���ǳ�"
teacher "�Юv"
dta_teacher "��ƨӷ�"
area "�����O"
mainsubv "�D�n���Ь�O"
schooltype "�Ǯ�����".
VALUE LABELS unit 1'������/���ǳ�'.
VALUE LABELS teacher 1'�Юv'.
VALUE LABELS  dta_teacher 1'�Э�' 2'¾��(�u)'.
VALUE LABELS
area
1 "�s�_��"
2 "�O�_��"
3 "��饫"
4 "�O����"
5 "�O�n��"
6 "������"
7 "�y����"
8 "�s�˿�"
9 "�]�߿�"
10 "���ƿ�"
11 "�n�뿤"
12 "���L��"
13 "�Ÿq��"
14 "�̪F��"
15 "�O�F��"
16 "�Ὤ��"
17 "���"
18 "�򶩥�"
19 "�s�˥�"
20 "�Ÿq��"
21 "������"
22 "�s����"/
mainsubv
01 "�y��-��y��"
02 "�y��-�^�y��"
03 "�y��-�ĤG�~��y��"
04 "���d�P��|"
05 "�ƾ�"
06 "���"
07 "��X����"
08 "���N"
09 "���|"
10 "�۵M���"
11 "�����꨾�Ш|"
21 "����s"
22 "�ʤO����s"
23 "�Ƥu�s"
24 "�q���P�q�l�s"
25 "�g��P�ؿv�s"
26 "�ӷ~�P�޲z�s"
27 "�~�y�s"
28 "�]�p�s"
29 "���N�s"
30 "�A�~�s"
31 "���~�s"
32 "�\�ȸs"
33 "�a�F�s"
34 "���Ƹs"
35 "�����s"
41 "�S��Ш|"
42 "����"
43 "�խq���׽ҵ{"
44 "��׽ҵ{"
45 "���鬡�ʮɶ�"
46 "�u�ʾǲ߮ɶ�"/
schooltype
1 "��"
2 "�M"
3 "��+�M"
4 "��+�ꤤ"
5 "�M+�ꤤ"
6 "��+�M+�ꤤ".
execute.

VARIABLE LABELS  indigenous '��������'. 
VALUE LABELS  indigenous 0'�@��' 1'���a����' 2'�s�a����'.
VARIABLE LABELS  indigenous2 '�����ڧO'. 
VARIABLE LABELS  indigenous3 '��������'. 
VALUE LABELS  indigenous3 1'����' 2'�D����'.

RECODE emptypev (1 3 = 1) (ELSE = 0) INTO full_emp.
EXECUTE.
VARIABLE LABELS 
full_emp "�M¾(�M���ΥN�z)".
VALUE LABELS full_emp 1'�M¾(�M���ΥN�z)'.
execute.



*�ǮզW��.
VARIABLE LABELS edu3 '�ǮզW��'.
*�Ǯդ��p��.
VARIABLE LABELS edu3 '���p��'.
VALUE LABELS  edu3 1'���' 2'������' 3'�p��'.
*�������P���ǳ�.
VARIABLE LABELS unit2 '�������P���ǳ�'.
VALUE LABELS unit2 1'������' 2'���ǳ�'.
*�u�����O.
VARIABLE LABELS emptypev '�u�����O'.
VALUE      LABELS emptypev 1 '�M��' 2 '�ݥ�' 3 '�N�z' 4 '�����N��' 5 '�M¾�ڻy�Ѯv' 6 '���I�Юv' 7 '���u��' 8 '����'.
*�̰��Ǿ������~�Ǧ�.
VARIABLE LABELS  level '�̰��Ǿ����~�Ǧ�O'.
VALUE LABELS   level 1 '����¾�ΥH�U�Ǯ�' 3 '�Ǥh' 2 '�ƾǤh' 5 '�Ӥh' 6 '�դh'.
*���զ~��]8�ա^.
VARIABLE LABELS tser8 '���ժA���`�~��'.
VALUE      LABELS tser8 1 '����1�~' 2 '1�ܥ���5�~' 3 '5�ܥ���10�~' 4 '10�ܥ���15�~' 5 '15�ܥ���20�~' 6 '20�ܥ���25�~' 7 '25�ܥ���30�~' 8 '30�~�H�W'. 
*�ǮժA�Ȧ~��]8�ա^.
VARIABLE LABELS tsch8 '�ǮժA�Ȧ~��'.
VALUE      LABELS tsch8 1 '����1�~' 2 '1�ܥ���5�~' 3 '5�ܥ���10�~' 4 '10�ܥ���15�~' 5 '15�ܥ���20�~' 6 '20�ܥ���25�~' 7 '25�ܥ���30�~' 8 '30�~�H�W'. 
*�̰����~�Ǿ��Ǯ�����.
VALUE      LABELS schoolv 1 "����¾�ΥH�U�Ǯ�" 2 "�xĵ�հ|" 3 "��ޤj�Ǯհ|" 4 "�@��j�Ǯհ|" 5 "�v�d�αШ|�j��" 6 "��L�M��H�W�Ǯ�" 7 "��~�M��H�W�Ǯ�". 
*���o�ҵ{�Ը߱Юv�X���Ҹ�.
VARIABLE LABELS qq '�O�_���o�ҵ{�Ը߱Юv�X���Ҹ�'.
VALUE LABELS qq 0'�|�����o�ҵ{�Ը߱Юv�X���Ҹ�' 1 '���o�ҵ{�Ը߱Юv�X���Ҹ�'.
*�M�~�Χ޳N��������ߩά�s.
VARIABLE LABELS studyv '�O�_�����M�~�Χ޳N��������ߩά�s'.
VALUE LABELS studyv 1'�����P�M�~�Χ޳N��������ߩά�s' 2'�|�������P�M�~�Χ޳N��������ߩά�s'.
*�M�~�s��Юv.
VARIABLE LABELS  areadepteacher_0 '�M�~�s��Юv'. 
VALUE LABELS  areadepteacher_0 1'�M�~�s��Юv'.
*�M¾.
RECODE emptypev (1 3 = 1) (ELSE = 0) INTO full_emp.
EXECUTE.
VARIABLE LABELS schoolv '�̰��Ǿ����~�Ǯ�����'.
VARIABLE LABELS tser '���ժA���`�~��'.
*��s�ҥH�W�Ǿ�.
RECODE level (1 2 3=1)(5 6=2) INTO level2.
VARIABLE LABELS level2 '�̰��Ǿ��O�_����s�ҥH�W'.
VALUE LABELS level2 1 '�D��s�ҥH�W' 2 '��s�ҥH�W'.
EXECUTE.

*��ƦX��Юv�Ү�.
VARIABLE LABELS th "�O�_��ƦX��Юv��".
VALUE LABELS th 3 '��ƦX��Юv��' 1'����ƦX��Юv��'.

*����X��˥�.
SELECT IF unit = 1 & (emptype = "�M��" | emptype = "�N�z" | emptype = "�����N��") & sertype = "�Юv".
EXECUTE.


* �ۭq���.
CTABLES
  /VLABELS VARIABLES=organization_id emptypev th DISPLAY=LABEL
  /TABLE organization_id [C][COUNT F40.0] BY emptypev [C] > th [C]
  /CATEGORIES VARIABLES=organization_id ORDER=A KEY=VALUE EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=emptypev ORDER=A KEY=VALUE EMPTY=INCLUDE
  /CATEGORIES VARIABLES=th ORDER=A KEY=VALUE EMPTY=INCLUDE TOTAL=YES POSITION=BEFORE.
