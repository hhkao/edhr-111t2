* Encoding: Big5.
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


*�@�B��¾���u�~�ֻP�ʧO.
    *(�@)�U�u���O��¾���u�~�ֵ��c.
*�� �������Τ��ǳ��M���оǤH���~�ֵ��c(�����B�����ơB�зǮt).
VALUE LABELS  dta_teacher 1'�������P���ǳ��M���оǤH��' 2'�������P���ǳ��M(��)��¾��(�u)'.
CTABLES /VLABELS VARIABLES=unit dta_teacher DISPLAY=NONE
  /TABLE area + schooltype
  [C] BY dta_teacher > unit > emptypev > age  [S][MEAN F40.2, STDDEV '�зǮt' F40.2, MINIMUM F40.2, MAXIMUM F40.2, COUNT '�H��' COMMA40.0] 
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '�� �������Τ��ǳ��M���оǤH���~�ֵ��c(�����ơB�зǮt)'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G�Э���ƪ����u�X�ͦ~���v�C'.

VALUE LABELS  dta_teacher 1'�������P���ǳ��M���оǤH��' 2'�������P���ǳ��M(��)��¾��(�u)'.
CTABLES /VLABELS VARIABLES=unit dta_teacher teacher DISPLAY=NONE
  /TABLE area + schooltype  [C] BY emptypev > dta_teacher > unit > age5  [C][COUNT '�H��' COMMA40.0, ROWPCT.COUNT '�C %'  COMMA40.1, TOTALS[COUNT '�H��'  COMMA40.0]] 
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=age5  ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='�p�p' POSITION = AFTER
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE 
  /TITLES 
    TITLE = '�� �������Τ��ǳ��M���оǤH���~�ֵ��c(����)'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G�Э���ƪ����u�X�ͦ~���v�C'.


*�� �������Τ��ǳ��M���Юv�~�ֵ��c(�����B�����ơB�зǮt).
VALUE LABELS  dta_teacher 1'�������P���ǳ��M���оǤH��' 2'�������P���ǳ��M(��)��¾��(�u)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit teacher DISPLAY=NONE
  /TABLE area + schooltype
  [C] BY dta_teacher > unit > emptypev > teacher > age  [S][MEAN F40.2, STDDEV '�зǮt' F40.2, MINIMUM F40.2, MAXIMUM F40.2, COUNT '�H��' COMMA40.0] 
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '�� �������Τ��ǳ��M���Юv�~�ֵ��c(�����ơB�зǮt)'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G�Э���ƪ����u�X�ͦ~���v�C'
                    '��3�G�M���Юv�Y���u�A�Ȩ����O�v���Юv�A�B�u�u�����O�v���M�����Э��C' .

VALUE LABELS  dta_teacher 1'�������P���ǳ��M���оǤH��' 2'�������P���ǳ��M(��)��¾��(�u)'.
CTABLES /VLABELS VARIABLES=dta_teacher teacher DISPLAY=NONE
  /TABLE area + schooltype  [C] BY emptypev > teacher > unit > age5  [C][COUNT '�H��' COMMA40.0, ROWPCT.COUNT '�C %'  COMMA40.1, TOTALS[COUNT '�H��'  COMMA40.0]] 
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=age5  ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='�p�p' POSITION = AFTER
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '�� �������Τ��ǳ��M���Юv�~�ֵ��c(����)'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G�Э���ƪ����u�X�ͦ~���v�C'
                    '��3�G�M���Юv�Y���u�A�Ȩ����O�v���Юv�A�B�u�u�����O�v���M�����Э��C' .
*NEW.
*�� �������Τ��ǳ��N�z�Юv�~�ֵ��c(�����B�����ơB�зǮt).
VALUE LABELS  dta_teacher 1'�������P���ǳ��M���оǤH��' 2'�������P���ǳ��M(��)��¾��(�u)'.
CTABLES /VLABELS VARIABLES=dta_teacher teacher unit DISPLAY=NONE
  /TABLE area + schooltype
  [C] BY  unit > emptypev > teacher > age  [S][MEAN F40.2, STDDEV '�зǮt' F40.2, MINIMUM F40.2, MAXIMUM F40.2, COUNT '�H��' COMMA40.0]
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[3] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE 
  /TITLES 
    TITLE = '�� �������Τ��ǳ��N�z�Юv�~�ֵ��c(�����ơB�зǮt)'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G�Э���ƪ����u�X�ͦ~���v�C'.

VALUE LABELS  dta_teacher 1'�������P���ǳ��M���оǤH��' 2'�������P���ǳ��M(��)��¾��(�u)'.
CTABLES /VLABELS VARIABLES=dta_teacher teacher DISPLAY=NONE
  /TABLE area + schooltype  [C] BY unit > emptypev > teacher > age5  [C][COUNT '�H��' COMMA40.0, ROWPCT.COUNT '�C %'  COMMA40.1, TOTALS[COUNT '�H��'  COMMA40.0]] 
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=age5  ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='�p�p' POSITION = AFTER
  /CATEGORIES VARIABLES=emptypev[3] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE 
  /TITLES 
    TITLE = '�� �������Τ��ǳ��N�z�Юv�~�ֵ��c(����)'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G�Э���ƪ����u�X�ͦ~���v�C'.

*4. �������Τ��ǳ��M(��)��¾���~�ֵ��c(�����B�����ơB�зǮt).
VALUE LABELS  dta_teacher 1'�������P���ǳ��M���Э�' 2'�������P���ǳ��M��¾��(�u)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
  /TABLE area + schooltype
  [C] BY dta_teacher > unit > emptypev > age  [S][MEAN F40.2, STDDEV '�зǮt' F40.2, MINIMUM F40.2, MAXIMUM F40.2, COUNT '�H��' COMMA40.0] 
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=dta_teacher[2] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '�� �������Τ��ǳ��M��¾��(�u)�~�ֵ��c(�����ơB�зǮt)'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G¾��(�u)��ƪ����u�X�ͦ~���v�C'.

VALUE LABELS  dta_teacher 1'�������P���ǳ��M���оǤH��' 2'�������P���ǳ��M(��)��¾��(�u)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit teacher DISPLAY=NONE
  /TABLE area + schooltype  [C] BY emptypev > dta_teacher > unit > age5  [C][COUNT '�H��' COMMA40.0, ROWPCT.COUNT '�C %'  COMMA40.1, TOTALS[COUNT '�H��'  COMMA40.0]] 
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=age5  ORDER = A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES LABEL='�p�p' POSITION = AFTER
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[2] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '�� �������Τ��ǳ��M��¾��(�u)�~�ֵ��c(����)'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G�Э���ƪ����u�X�ͦ~���v�C'.


    *(�G)�U�u���O��¾���u�ʧO���.
*�� �������Τ��ǳ��M���оǤH���ʧO.
VALUE LABELS  dta_teacher 1'�������P���ǳ��M���оǤH��' 2'�������P���ǳ��M(��)��¾��(�u)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit unit2  DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher > unit > emptypev > gender  [C][COUNT '�H��' COMMA40.0, ROWPCT.COUNT '�C %'  COMMA40.1, TOTALS[COUNT '�H��'  COMMA40.0]] 
  /CATEGORIES VARIABLES= gender       ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='�p�p' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '�� �������Τ��ǳ��M���оǤH���ʧO���'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G�Э���ƪ����u��������ҲΤ@�s��/�~�ӤH�f�Τ@�Ҹ��v�C'.

*�� �������Τ��ǳ��M���Юv�ʧO.
VALUE LABELS  dta_teacher 1'�������P���ǳ��M���оǤH��' 2'�������P���ǳ��M(��)��¾��(�u)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit unit2 teacher  DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher > unit > emptypev > teacher> gender  [C][COUNT '�H��' COMMA40.0, ROWPCT.COUNT '�C %'  COMMA40.1, TOTALS[COUNT '�H��'  COMMA40.0]] 
  /CATEGORIES VARIABLES= gender       ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='�p�p' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '�� �������Τ��ǳ��M���Юv�ʧO���'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G�Э���ƪ����u��������ҲΤ@�s��/�~�ӤH�f�Τ@�Ҹ��v�C'
                    '��3�G�M���Юv�Y���u�A�Ȩ����O�v���Юv�A�B�u�u�����O�v���M�����Э��C' .

*�� �������Τ��ǳ��N�z�Юv�ʧO.
VALUE LABELS  dta_teacher 1'�������P���ǳ��M���оǤH��' 2'�������P���ǳ��M(��)��¾��(�u)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit unit2 teacher  DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher > unit > emptypev > teacher> gender  [C][COUNT '�H��' COMMA40.0, ROWPCT.COUNT '�C %'  COMMA40.1, TOTALS[COUNT '�H��'  COMMA40.0]] 
  /CATEGORIES VARIABLES= gender       ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='�p�p' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[3] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '�� �������Τ��ǳ��N�z�Юv�ʧO���'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G�Э���ƪ����u��������ҲΤ@�s��/�~�ӤH�f�Τ@�Ҹ��v�C'.


*3. �������Τ��ǳ��M(��)��¾���ʧO.
VALUE LABELS  dta_teacher 1'�������P���ǳ��M���Э�' 2'�������P���ǳ��M��¾��(�u)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit unit2  DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher > unit > emptypev > gender  [C][COUNT '�H��' COMMA40.0, ROWPCT.COUNT '�C %'  COMMA40.1, TOTALS[COUNT '�H��'  COMMA40.0]] 
  /CATEGORIES VARIABLES= gender       ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='�p�p' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=dta_teacher[2] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '�� �������Τ��ǳ��M��¾��(�u)�ʧO���'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G¾��(�u)��ƪ����u��������ҲΤ@�s��/�~�ӤH�f�Τ@�Ҹ��v�C'.

*�G�B��¾���u�򥻸��.
    *(�@)�U�u���O��¾���u������������.
        *�M���Э�.
CTABLES /VLABELS VARIABLES=dta_teacher unit unit2  DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher > unit > emptypev > indigenous3  [C][COUNT '�H��' COMMA40.0, ROWPCT.COUNT '�C %'  COMMA40.1, TOTALS[COUNT '�H��'  COMMA40.0]] 
  /CATEGORIES VARIABLES= indigenous3       ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='�p�p' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '�� �������Τ��ǳ�����������M���оǤH���H�ƤΨ�e�������Τ��ǳ�����M���оǤH�����'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G�Э���ƪ����u�O�_������y�v�C'.
        *�M���Юv.
CTABLES /VLABELS VARIABLES=dta_teacher unit unit2  DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher > unit > teacher > emptypev > indigenous3  [C][COUNT '�H��' COMMA40.0, ROWPCT.COUNT '�C %'  COMMA40.1, TOTALS[COUNT '�H��'  COMMA40.0]] 
  /CATEGORIES VARIABLES= indigenous3       ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='�p�p' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '�� �������Τ��ǳ�����������M���Юv�H�ƤΨ�e�������Τ��ǳ�����M���Юv���'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G�Э���ƪ����u�O�_������y�v�C'
                    '��3�G�M���Юv�Y���u�A�Ȩ����O�v���Юv�A�B�u�u�����O�v���M�����Э��C' .

        *�M��¾��(�u).
CTABLES /VLABELS VARIABLES=dta_teacher unit unit2  DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher > unit > emptypev > indigenous3  [C][COUNT '�H��' COMMA40.0, ROWPCT.COUNT '�C %'  COMMA40.1, TOTALS[COUNT '�H��'  COMMA40.0]] 
  /CATEGORIES VARIABLES= indigenous3       ORDER = A KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='�p�p' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[2] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '�� �������Τ��ǳ�����������M��¾��(�u)�H�ƤΨ�e�������Τ��ǳ�����M��¾��(�u)���'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G�Э���ƪ����u�O�_������y�v�C'.

    *(�G).�U�u���O��¾���u���߻�ê���.
*�� �������Τ��ǳ��M�����߻�ê�оǤH��.
VALUE LABELS  dta_teacher 1'�������P���ǳ��M���оǤH��' 2'�������P���ǳ��M(��)��¾��(�u)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > unit > emptypev >  implcls  [C][COUNT '�H��' COMMA40.0, ROWPCT.COUNT '�C %'  COMMA40.1, TOTALS[COUNT '�H��'  COMMA40.0]] 
  /CATEGORIES VARIABLES= implcls       ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='�p�p' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '�� �������Τ��ǳ����߻�ê�M���оǤH���H�ƤΨ�e�������Τ��ǳ�����M���оǤH�����'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G�Э���ƪ����u�O�_�����߻�ê�H�h�v�C'.

*�� �������Τ��ǳ��M�����߻�ê�Юv.
VALUE LABELS  dta_teacher 1'�������P���ǳ��M���оǤH��' 2'�������P���ǳ��M(��)��¾��(�u)'.
CTABLES /VLABELS VARIABLES=dta_teacher teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > unit > emptypev > teacher > implcls  [C][COUNT '�H��' COMMA40.0, ROWPCT.COUNT '�C %'  COMMA40.1, TOTALS[COUNT '�H��'  COMMA40.0]] 
  /CATEGORIES VARIABLES= implcls       ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='�p�p' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE 
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE 
  /TITLES 
    TITLE = '�� �������Τ��ǳ����߻�ê�M���Юv�H�ƤΨ�e�������Τ��ǳ�����M���Юv���'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G�Э���ƪ����u�O�_�����߻�ê�H�h�v�C'
                    '��3�G�M���Юv�Y���u�A�Ȩ����O�v���Юv�A�B�u�u�����O�v���M�����Э��C' .

*7. �������Τ��ǳ��M�ݥ����߻�ê¾��.
VALUE LABELS  dta_teacher 1'�������P���ǳ��M���Э�' 2'�������P���ǳ��M��¾��(�u)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY dta_teacher > unit > emptypev >  implcls  [C][COUNT '�H��' COMMA40.0, ROWPCT.COUNT '�C %'  COMMA40.1, TOTALS[COUNT '�H��'  COMMA40.0]] 
  /CATEGORIES VARIABLES= implcls       ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='�p�p' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=dta_teacher[2] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=emptypev[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '�� �������Τ��ǳ����߻�ê�M��¾��(�u)�H�ƤΨ�e�������Τ��ǳ�����M��¾��(�u)���'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G¾��(�u)��ƪ����u�O�_�����߻�ê�H�h�v�C'.

    *(�T)�~���y��¾���u���.
*�� �������Τ��ǳ��M(��)���~�y�Э�.
VALUE LABELS  dta_teacher 1'�������P���ǳ��M���оǤH��' 2'�������P���ǳ��M(��)��¾��(�u)'.
CTABLES /VLABELS VARIABLES=dta_teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher > unit > foreign  [C][COUNT '�H��' COMMA40.0, ROWPCT.COUNT '�C %'  COMMA40.1, TOTALS[COUNT '�H��'  COMMA40.0]] 
  /CATEGORIES VARIABLES= foreign       ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='�p�p' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '�� �������Τ��ǳ��~���y�оǤH���H�ƤΨ�e�������Τ��ǳ�����оǤH�����'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G�Э���ƪ����u���y�O�v�C'.

*�� �������Τ��ǳ��M(��)���~�y�Юv.
VALUE LABELS  dta_teacher 1'�������P���ǳ��M���оǤH��' 2'�������P���ǳ��M(��)��¾��(�u)'.
CTABLES /VLABELS VARIABLES=dta_teacher teacher unit DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher > unit > teacher > foreign  [C][COUNT '�H��' COMMA40.0, ROWPCT.COUNT '�C %'  COMMA40.1, TOTALS[COUNT '�H��'  COMMA40.0]] 
  /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES= foreign       ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='�p�p' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=dta_teacher[1] EMPTY=EXCLUDE
  /CATEGORIES VARIABLES=teacher[1] EMPTY=EXCLUDE 
  /TITLES 
    TITLE = '�� �������Τ��ǳ��~���y�Юv�H�ƤΨ�e�������Τ��ǳ�����Юv���'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G�Э���ƪ����u���y�O�v�C'.

*5. �������Τ��ǳ��M�ݥ��~�y¾��(�u).
VALUE LABELS  dta_teacher 1'�������P���ǳ��M���Э�' 2'�������P���ǳ��M��¾��(�u)'.
CTABLES /VLABELS VARIABLES=unit dta_teacher DISPLAY=NONE
  /TABLE area + schooltype BY  dta_teacher> unit > foreign  [C][COUNT '�H��' COMMA40.0, ROWPCT.COUNT '�C %'  COMMA40.1, TOTALS[COUNT '�H��'  COMMA40.0]] 
  /CATEGORIES VARIABLES= foreign       ORDER = D KEY=VALUE EMPTY=INCLUDE TOTAL=YES LABEL='�p�p' POSITION = AFTER
  /CATEGORIES VARIABLES=area ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=YES POSITION=BEFORE LABEL='�p�p'
  /CATEGORIES VARIABLES=schooltype ORDER=A KEY=VALUE EMPTY=EXCLUDE TOTAL=NO
  /CATEGORIES VARIABLES=dta_teacher[2] EMPTY=EXCLUDE
 /CATEGORIES VARIABLES=unit[1] EMPTY=EXCLUDE
  /TITLES 
    TITLE = '�� �������Τ��ǳ��~�y¾��(�u)�H�ƤΨ�e�������Τ��ǳ�����¾��(�u)���'
    CAPTION='��1�G����ƾڬ������ơA�ƭȥH�|�ˤ��J�p��C' 
                    '��2�G¾��(�u)��ƪ����u���y�O�v�C'.

