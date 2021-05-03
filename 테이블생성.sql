CREATE TABLE stadium (
STADIUM_ID    CHAR(3) NOT NULL,
STADIUM_NAME  VARCHAR2(20) NOT NULL,
HOMETEAM_ID   CHAR(3),
SEAT_COUNT    NUMBER,
ADDRESS     VARCHAR2(60),
DDD         VARCHAR2(3),
TEL         VARCHAR2(10),
CONSTRAINT stadium_PK PRIMARY KEY (STADIUM_ID)
);

CREATE TABLE team (
TEAM_ID     CHAR(3) NOT NULL,
REGION_NAME VARCHAR2(4) NOT NULL,
TEAM_NAME   VARCHAR2(20) NOT NULL,
E_TEAM_NAME VARCHAR2(50),
ORIG_YYYY   CHAR(4),
STADIUM_ID  CHAR(3) NOT NULL,
ZIP_CODE1   CHAR(3),
ZIP_CODE2   CHAR(3),
ADDRESS     VARCHAR2(60),
DDD         VARCHAR2(3),
TEL         VARCHAR2(10),
FAX         VARCHAR2(10),
HOMEPAGE    VARCHAR2(50),
OWNER       VARCHAR2(10)
);


CREATE TABLE player (
PLAYER_ID     CHAR(7) NOT NULL,
PLAYER_NAME   VARCHAR2(20) NOT NULL,
TEAM_ID       CHAR(3) NOT NULL,
E_PLAYER_NAME VARCHAR2(40),
NICKNAME      VARCHAR2(30),
JOIN_YYYY     CHAR(4),
POSITION      VARCHAR2(10),
BACK_NO       NUMBER(2),
NATION        VARCHAR2(20),
BIRTH_date         DATE,
SOLAR         CHAR(1),
HEIGHT        NUMBER(3),
WEIGHT        NUMBER(3)
);

CREATE TABLE schedule (
GUBUN        CHAR(1) NOT NULL,
STADIUM_ID   VARCHAR2(5) NOT NULL,
SCHE_DATE    CHAR(8) NOT NULL,
HOMETEAM_ID  CHAR(3) NOT NULL,
AWAYTEAM_ID  CHAR(3) NOT NULL,
HOME_SCORE   NUMBER(2),
AWAY_SCORE   NUMBER(2)
);

CREATE TABLE team_history (
TEAM_ID  CHAR(3) NOT NULL,
YYYY     CHAR(4) NOT NULL,
SEQ      NUMBER  NOT NULL,
COMMENTS  VARCHAR2(100)
);



-------------------------------------------------------------------------
-- insert_stadium 
-------------------------------------------------------------------------


INSERT INTO stadium VALUES ('E01','�ѹ����տ��','K10',30000,'���� ������ �߱� �λ絿 162-1','042','221-2002');                                              
INSERT INTO stadium VALUES ('C02','�λ걸��','K06',30000,'�λ걤���� ���� ����ŵ� 3�� 210����','051','247-5771');                                             
INSERT INTO stadium VALUES ('B01','��õ����','K04',35000,'��õ�� ���̱� ���ǵ� �� 19����','031','666-0496');                                                   
INSERT INTO stadium VALUES ('B02','��������','K08',27000,'������ �߿��� ������ 3110����','031','753-3956');                                                    
INSERT INTO stadium VALUES ('B04','���������ű���','K02',50000,'������ �ȴޱ� �츸1�� 228����','031','259-2150');                                              
INSERT INTO stadium VALUES ('B05','�Ⱦ籸��','K09',22500,'��⵵ ���ȱ� ���3�� 1025����','031','380-7212');                                                  
INSERT INTO stadium VALUES ('C04','��깮������','K01',46102,'��걤���� ���� ���� ��5���� ���ü������','052','220-');                                        
INSERT INTO stadium VALUES ('D01','��������','K07',20009,'���� ����� ��ȣ�� 700','061','792-5600');                                                           
INSERT INTO stadium VALUES ('D03','���ϱ���','K05',28000,'���� ������ ������ 1�� 1220','063','273-1763');                                                      
INSERT INTO stadium VALUES ('C06','���ױ���','K03',25000,'��� ���׽� ���� ���� 1����','054','282-2002');                                                     
INSERT INTO stadium VALUES ('B03','��������','','','��⵵ ������','','');       
INSERT INTO stadium VALUES ('C01','��õ����','','','��� ��õ��','','');         
INSERT INTO stadium VALUES ('C03','��걸��','','','��걤����','','');          
INSERT INTO stadium VALUES ('C05','â������','','','�泲 â����','','');         
INSERT INTO stadium VALUES ('D02','���ֱ���','','','���� ���ֽ�','','');         
INSERT INTO stadium VALUES ('E02','���������ű���','',41000,'���������� ������ ������ 270����','','');                                                         
INSERT INTO stadium VALUES ('A01','���� �����Ű����','',63930,'','','');      

-------------------------------------------------------------------------
--  insert_team.sql  
-------------------------------------------------------------------------


INSERT INTO team VALUES ('K10','����','��Ƽ��','TAEJON CITIZEN','1997','E02','301','030',
'���������� �߱� �λ絿 162-1 �ѹ��� �� ','42','252-2002','221-0669','http://www.tcfc.co.kr','');                                                
                                                                               
INSERT INTO team VALUES ('K06','�λ�','�����ܽ�','BUSAN ICONS','1983','C02','57 ','050',
'�λ�� ������ ���ȵ� 1-11���� ������� B/D 9��','51','555-7101','555-7103','http://www.busanicons/co.kr','');                                        
                                                                                
INSERT INTO team VALUES ('K04','��õ','SK','BUCHEON SK','1982','B01','110','728',
'���� ���α� ������ 99���� SK ���� 3��','2','2121-5271','2121-5276','http://www.skfc.com','');                                                               

INSERT INTO team VALUES ('K08','����','��ȭõ��','SEONGNAM ILHWA','1989','B02','462',
'130','��⵵ ������ �߿��� ������ 3110���� �������տ�� ��','31','753-3956','753-4443','http://www.seongnamilhwafc.co.kr','');                        
                                                                                
INSERT INTO team VALUES ('K02','����','�Ｚ�������','SUWON SAMSUNG BLUEWINGS','1995','B04','440','220',
'������ ��ȱ� ������ 601-1 ������ü��ȸ�� 3��','31','247-2002','257-0766','http://www.fcbluewings.com','');                          
                                                                                
INSERT INTO team VALUES ('K09','�Ⱦ�','LGġŸ��','ANYANG LG ','1983','B05','138','221',
'���� ���ı� ���1�� 10���� ���տ�� ��','2','2005-5746','2005-5802','http://www.lgfootball.com','');                                                
                                                                                
INSERT INTO team VALUES ('K01','���','����ȣ����','ULSAN HYUNDAI HORANGI','1983','C04','682','060',
'��걤���� ���� ���ϵ� 1����','52','230-6141','230-6145','http://www.horanifc.co.kr','');                                                
                                                                                
INSERT INTO team VALUES ('K07','����','�巡����','CHUNNAM DRAGONS','1994','D01','544','010',
'���� ������� �ߵ� 1318-2���� ������� B/D 5��','61','792-5600','792-5605','http://www.dragons.co.kr','');                                       
                                                                                
INSERT INTO team VALUES ('K05','����','������ͽ�','CHUNBUK HYUNDAI MOTORS','1994','D03','560','190',
'���� ���ֽ� ������ ������ 1�� 1220����','63','273-1763','273-1762','http://www.hyundai-motors.com','');                                 
                                                                                
INSERT INTO team VALUES ('K03','����','��ƿ����','POHANG STEELERS','1973','C06','790','050',
'��� ���׽� �׵��� 645-1 ���� B/D 6��','54','282-2002','282-5955','http://www.steelers.co.kr','');                                               
 
-------------------------------------------------------------------------
--  insert_schedule.sql  
-------------------------------------------------------------------------


INSERT INTO schedule VALUES ('A','C02','20020501','K06','K10','2','0');       
INSERT INTO schedule VALUES ('A','B03','20020505','K02','K01','1','2');       
INSERT INTO schedule VALUES ('A','B05','20020505','K09','K08','1','3');       
INSERT INTO schedule VALUES ('A','B02','20020512','K08','K01','1','1');       
INSERT INTO schedule VALUES ('S','C02','20020707','K06','K01','1','2');       
INSERT INTO schedule VALUES ('S','B02','20020707','K08','K03','3','2');       
INSERT INTO schedule VALUES ('S','D03','20020707','K05','K09','2','1');       
INSERT INTO schedule VALUES ('S','D01','20020707','K07','K10','1','0');       
INSERT INTO schedule VALUES ('S','B04','20020710','K02','K01','2','1');       
INSERT INTO schedule VALUES ('S','D03','20020710','K05','K03','1','1');       
INSERT INTO schedule VALUES ('S','E02','20020710','K10','K04','0','2');       
INSERT INTO schedule VALUES ('S','C02','20020710','K06','K08','3','1');       
INSERT INTO schedule VALUES ('S','D01','20020710','K07','K09','0','0');       
INSERT INTO schedule VALUES ('S','C06','20020713','K03','K06','2','1');       
INSERT INTO schedule VALUES ('S','B05','20020714','K09','K02','3','0');       
INSERT INTO schedule VALUES ('S','B01','20020714','K04','K07','1','0');       
INSERT INTO schedule VALUES ('S','E02','20020714','K10','K08','1','1');       
INSERT INTO schedule VALUES ('S','D01','20020717','K07','K01','0','0');       
INSERT INTO schedule VALUES ('S','C06','20020717','K03','K02','2','0');       
INSERT INTO schedule VALUES ('S','B02','20020717','K08','K04','2','1');       
INSERT INTO schedule VALUES ('S','C02','20020717','K06','K05','1','2');       
INSERT INTO schedule VALUES ('S','B05','20020717','K09','K10','1','1');       
INSERT INTO schedule VALUES ('S','D01','20020720','K07','K03','1','1');       
INSERT INTO schedule VALUES ('S','B04','20020721','K02','K06','2','2');       
INSERT INTO schedule VALUES ('S','D03','20020721','K05','K08','2','2');       
INSERT INTO schedule VALUES ('S','B01','20020721','K04','K09','1','3');       
INSERT INTO schedule VALUES ('S','D03','20020724','K05','K02','1','1');       
INSERT INTO schedule VALUES ('S','E02','20020724','K10','K03','1','1');       
INSERT INTO schedule VALUES ('S','C02','20020724','K06','K07','0','1');       
INSERT INTO schedule VALUES ('S','B02','20020724','K08','K09','1','1');       
INSERT INTO schedule VALUES ('S','C06','20020727','K03','K04','2','1');       
INSERT INTO schedule VALUES ('S','D01','20020727','K07','K05','2','1');       
INSERT INTO schedule VALUES ('S','C02','20020727','K06','K10','3','0');       
INSERT INTO schedule VALUES ('S','B05','20020728','K09','K01','1','1');       
INSERT INTO schedule VALUES ('S','B04','20020728','K02','K08','2','2');       
INSERT INTO schedule VALUES ('S','B02','20020731','K08','K01','2','0');       
INSERT INTO schedule VALUES ('S','B05','20020731','K09','K03','3','1');       
INSERT INTO schedule VALUES ('S','E02','20020731','K10','K05','1','0');       
INSERT INTO schedule VALUES ('S','B01','20020731','K04','K06','3','2');       
INSERT INTO schedule VALUES ('S','B04','20020731','K02','K07','1','2');       
INSERT INTO schedule VALUES ('S','B02','20020803','K08','K07','1','0');       
INSERT INTO schedule VALUES ('S','C02','20020803','K06','K09','2','1');       
INSERT INTO schedule VALUES ('S','E02','20020804','K10','K02','0','3');       
INSERT INTO schedule VALUES ('S','D03','20020804','K05','K04','2','1');       
INSERT INTO schedule VALUES ('S','B01','20020811','K04','K02','0','2');       
INSERT INTO schedule VALUES ('S','B05','20020811','K09','K05','0','1');       
INSERT INTO schedule VALUES ('S','C06','20020811','K03','K08','2','0');       
INSERT INTO schedule VALUES ('S','D01','20020811','K07','K10','1','1');       
INSERT INTO schedule VALUES ('S','D03','20020818','K05','K01','0','2');       
INSERT INTO schedule VALUES ('S','C02','20020818','K06','K03','3','1');       
INSERT INTO schedule VALUES ('S','B01','20020818','K04','K07','1','0');       
INSERT INTO schedule VALUES ('S','B04','20020818','K02','K09','1','2');       
INSERT INTO schedule VALUES ('S','B02','20020818','K08','K10','3','1');       
INSERT INTO schedule VALUES ('S','B04','20020824','K02','K01','1','1');       
INSERT INTO schedule VALUES ('S','D03','20020824','K05','K03','3','3');       
INSERT INTO schedule VALUES ('S','B02','20020824','K08','K06','4','3');       
INSERT INTO schedule VALUES ('S','E02','20020825','K10','K04','1','1');       
INSERT INTO schedule VALUES ('S','B05','20020825','K09','K07','1','1');       
INSERT INTO schedule VALUES ('S','C06','20020828','K03','K02','0','0');       
INSERT INTO schedule VALUES ('S','C02','20020828','K06','K05','1','1');       
INSERT INTO schedule VALUES ('S','B01','20020828','K04','K08','2','3');       
INSERT INTO schedule VALUES ('S','B05','20020828','K09','K10','2','0');       
INSERT INTO schedule VALUES ('S','E02','20020901','K10','K01','2','3');       
INSERT INTO schedule VALUES ('S','D01','20020901','K07','K03','0','1');       
INSERT INTO schedule VALUES ('S','B04','20020901','K02','K06','1','1');       
INSERT INTO schedule VALUES ('S','D03','20020901','K05','K08','3','3');       
INSERT INTO schedule VALUES ('S','B01','20020901','K04','K09','2','1');       
INSERT INTO schedule VALUES ('S','D01','20020911','K07','K05','','');         
INSERT INTO schedule VALUES ('S','B05','20020911','K09','K01','','');         
INSERT INTO schedule VALUES ('S','B04','20020911','K02','K08','','');         
INSERT INTO schedule VALUES ('S','B01','20020911','K04','K03','','');         
INSERT INTO schedule VALUES ('S','E02','20020911','K10','K06','','');         
INSERT INTO schedule VALUES ('S','C02','20020914','K06','K04','','');         
INSERT INTO schedule VALUES ('S','C06','20020914','K03','K09','','');         
INSERT INTO schedule VALUES ('S','B02','20020914','K08','K01','','');         
INSERT INTO schedule VALUES ('S','D01','20020914','K07','K02','','');         
INSERT INTO schedule VALUES ('S','D03','20020915','K05','K10','','');         
INSERT INTO schedule VALUES ('S','E02','20020918','K10','K02','','');         
INSERT INTO schedule VALUES ('S','B02','20020918','K08','K07','','');         
INSERT INTO schedule VALUES ('S','B05','20020918','K09','K06','','');         
INSERT INTO schedule VALUES ('S','D03','20020918','K05','K04','','');         
INSERT INTO schedule VALUES ('S','B04','20020925','K02','K10','','');         
INSERT INTO schedule VALUES ('S','C06','20020925','K03','K01','','');         
INSERT INTO schedule VALUES ('S','B01','20020925','K04','K05','','');         
INSERT INTO schedule VALUES ('S','D01','20020925','K07','K08','','');         
INSERT INTO schedule VALUES ('S','B05','20020925','K09','K06','','');         
INSERT INTO schedule VALUES ('S','D01','20021019','K07','K02','','');         
INSERT INTO schedule VALUES ('S','C06','20021019','K03','K09','','');         
INSERT INTO schedule VALUES ('S','E02','20021020','K10','K05','','');         
INSERT INTO schedule VALUES ('S','C02','20021020','K06','K04','','');         
INSERT INTO schedule VALUES ('S','C06','20021023','K03','K04','','');         
INSERT INTO schedule VALUES ('S','D03','20021023','K05','K07','','');         
INSERT INTO schedule VALUES ('S','C02','20021023','K06','K10','','');         
INSERT INTO schedule VALUES ('S','B02','20021023','K08','K02','','');         
INSERT INTO schedule VALUES ('S','D01','20021026','K07','K06','','');         
INSERT INTO schedule VALUES ('S','E02','20021027','K10','K03','','');         
INSERT INTO schedule VALUES ('S','B01','20021027','K04','K01','','');         
INSERT INTO schedule VALUES ('S','B05','20021027','K09','K08','','');         
INSERT INTO schedule VALUES ('S','B04','20021027','K02','K05','','');         
INSERT INTO schedule VALUES ('S','B04','20021030','K02','K04','','');         
INSERT INTO schedule VALUES ('S','E02','20021030','K10','K08','','');         
INSERT INTO schedule VALUES ('S','C06','20021102','K03','K07','','');         
INSERT INTO schedule VALUES ('S','B05','20021103','K09','K04','','');         
INSERT INTO schedule VALUES ('S','C02','20021103','K06','K02','','');         
INSERT INTO schedule VALUES ('S','B02','20021103','K08','K05','','');         
INSERT INTO schedule VALUES ('S','D03','20021106','K05','K06','','');         
INSERT INTO schedule VALUES ('S','D01','20021106','K07','K01','','');         
INSERT INTO schedule VALUES ('S','E02','20021106','K10','K09','','');         
INSERT INTO schedule VALUES ('S','B01','20021106','K04','K08','','');         
INSERT INTO schedule VALUES ('S','B04','20021106','K02','K03','','');         
INSERT INTO schedule VALUES ('S','C06','20021109','K03','K05','','');         
INSERT INTO schedule VALUES ('S','B05','20021110','K09','K07','','');         
INSERT INTO schedule VALUES ('S','B01','20021110','K04','K10','','');         
INSERT INTO schedule VALUES ('S','B02','20021110','K08','K06','','');         
INSERT INTO schedule VALUES ('S','D01','20021113','K07','K04','','');         
INSERT INTO schedule VALUES ('S','C02','20021113','K06','K03','','');         
INSERT INTO schedule VALUES ('S','B04','20021113','K02','K09','','');         
INSERT INTO schedule VALUES ('S','D03','20021113','K05','K01','','');         
INSERT INTO schedule VALUES ('S','B05','20021117','K09','K05','','');         
INSERT INTO schedule VALUES ('S','E02','20021117','K10','K07','','');         
INSERT INTO schedule VALUES ('S','C06','20021117','K03','K08','','');         
INSERT INTO schedule VALUES ('S','B01','20021117','K04','K02','','');         
INSERT INTO schedule VALUES ('A','C04','20020508','K01','K08','1','3');       
INSERT INTO schedule VALUES ('S','C04','20020713','K01','K05','0','0');       
INSERT INTO schedule VALUES ('S','C04','20020720','K01','K10','0','0');       
INSERT INTO schedule VALUES ('S','C04','20020724','K01','K04','1','1');       
INSERT INTO schedule VALUES ('S','C04','20020803','K01','K03','3','0');       
INSERT INTO schedule VALUES ('S','C04','20020811','K01','K06','0','0');       
INSERT INTO schedule VALUES ('S','C04','20020828','K01','K07','0','1');       
INSERT INTO schedule VALUES ('S','C04','20020918','K01','K03','','');         
INSERT INTO schedule VALUES ('S','C04','20021019','K01','K08','','');         
INSERT INTO schedule VALUES ('S','C04','20021023','K01','K09','','');         
INSERT INTO schedule VALUES ('S','C04','20021102','K01','K10','','');         
INSERT INTO schedule VALUES ('S','C04','20021110','K01','K02','','');         
INSERT INTO schedule VALUES ('S','C04','20021117','K01','K06','','');         
INSERT INTO schedule VALUES ('A','C06','20020317','K03','K02','1','2');       
INSERT INTO schedule VALUES ('A','B02','20020317','K08','K04','6','0');       
INSERT INTO schedule VALUES ('A','E01','20020317','K10','K06','2','1');       
INSERT INTO schedule VALUES ('A','C03','20020317','K01','K09','2','2');       
INSERT INTO schedule VALUES ('A','D01','20020320','K07','K01','1','2');       
INSERT INTO schedule VALUES ('A','D02','20020320','K05','K03','1','0');       
INSERT INTO schedule VALUES ('A','B03','20020320','K02','K08','2','3');       
INSERT INTO schedule VALUES ('A','B05','20020320','K09','K10','2','0');       
INSERT INTO schedule VALUES ('A','B03','20020323','K02','K05','2','0');       
INSERT INTO schedule VALUES ('A','C02','20020324','K06','K01','1','2');       
INSERT INTO schedule VALUES ('A','B01','20020324','K04','K03','1','1');       
INSERT INTO schedule VALUES ('A','B05','20020324','K09','K07','1','0');       
INSERT INTO schedule VALUES ('A','D01','20020327','K07','K06','2','1');       
INSERT INTO schedule VALUES ('A','C06','20020327','K03','K08','1','0');       
INSERT INTO schedule VALUES ('A','C03','20020327','K01','K10','0','1');       
INSERT INTO schedule VALUES ('A','D02','20020406','K05','K04','3','2');       
INSERT INTO schedule VALUES ('A','B01','20020410','K04','K02','2','0');       
INSERT INTO schedule VALUES ('A','B02','20020410','K08','K05','2','1');       
INSERT INTO schedule VALUES ('A','E01','20020410','K10','K07','1','1');       
INSERT INTO schedule VALUES ('A','C02','20020410','K06','K09','1','4');       
INSERT INTO schedule VALUES ('A','C01','20020414','K10','K01','0','2');       
INSERT INTO schedule VALUES ('A','B02','20020414','K08','K03','1','1');       
INSERT INTO schedule VALUES ('A','B01','20020414','K04','K05','1','0');       
INSERT INTO schedule VALUES ('A','C02','20020414','K06','K07','2','0');       
INSERT INTO schedule VALUES ('A','D02','20020420','K05','K08','2','2');       
INSERT INTO schedule VALUES ('A','D01','20020420','K07','K10','0','1');       
INSERT INTO schedule VALUES ('A','B03','20020421','K02','K04','3','2');       
INSERT INTO schedule VALUES ('A','B05','20020421','K09','K06','1','0');       
INSERT INTO schedule VALUES ('A','B02','20020424','K08','K02','1','1');       
INSERT INTO schedule VALUES ('A','C06','20020424','K03','K05','1','2');       
INSERT INTO schedule VALUES ('A','C03','20020424','K01','K07','1','2');       
INSERT INTO schedule VALUES ('A','E01','20020424','K10','K09','1','3');       
INSERT INTO schedule VALUES ('A','C06','20020427','K03','K04','0','3');       
INSERT INTO schedule VALUES ('A','C03','20020427','K01','K06','5','2');       
INSERT INTO schedule VALUES ('A','D01','20020427','K07','K09','0','1');       
INSERT INTO schedule VALUES ('A','D02','20020428','K05','K02','1','2');       
INSERT INTO schedule VALUES ('A','B05','20020501','K09','K01','0','0');       
INSERT INTO schedule VALUES ('A','B03','20020501','K02','K03','1','2');       
INSERT INTO schedule VALUES ('A','B01','20020501','K04','K08','2','2');       
INSERT INTO schedule VALUES ('S','D02','20020904','K05','K02','1','2');       
INSERT INTO schedule VALUES ('S','B02','20020904','K08','K09','1','0');       
INSERT INTO schedule VALUES ('S','C05','20020904','K01','K04','2','2');       
INSERT INTO schedule VALUES ('S','C06','20020904','K03','K10','0','0');       
INSERT INTO schedule VALUES ('S','C02','20020904','K06','K07','2','2');       
-----------
----------insert player
--------------------
INSERT INTO player VALUES ('1999174','�츣���','K06','','','1999','DF','4','����',TO_DATE('30-08-1977','dd-mm-yyyy'),'1','180','70');                         
INSERT INTO player VALUES ('1997188','������','K06','','','1995','DF','15','',TO_DATE('01-11-1972','dd-mm-yyyy'),'1','180','74');                               
INSERT INTO player VALUES ('2002073','�̱�ȣ','K06','','','2001','DF','23','',TO_DATE('13-07-1979','dd-mm-yyyy'),'1','177','72');                               
INSERT INTO player VALUES ('1997178','�̹μ�','K06','','','','DF','20','',TO_DATE('23-06-1973','dd-mm-yyyy'),'1','182','73');                                   
INSERT INTO player VALUES ('1997191','�����','K06','','���ߵ���,�������','1997','DF','18','',TO_DATE('05-06-1974','dd-mm-yyyy'),'2','170','61');              
INSERT INTO player VALUES ('1998384','����ȿ','K06','','������,��Ű��','1998','DF','19','',TO_DATE('23-07-1975','dd-mm-yyyy'),'2','174','68');                  
INSERT INTO player VALUES ('1998395','�����','K06','','�ޱ�','2000','DF','7','',TO_DATE('09-03-1975','dd-mm-yyyy'),'2','184','79');                            
INSERT INTO player VALUES ('2001050','�����','K06','','����ȫ�浿','2001','DF','36','',TO_DATE('14-06-1978','dd-mm-yyyy'),'1','173','65');                     
INSERT INTO player VALUES ('1997189','���翵','K06','','����','1996','MF','6','',TO_DATE('02-09-1973','dd-mm-yyyy'),'2','187','75');                            
INSERT INTO player VALUES ('2001049','���¹�','K06','','ŷī','2001','MF','38','',TO_DATE('25-05-1982','dd-mm-yyyy'),'1','180','71');                           
INSERT INTO player VALUES ('2000107','������','K06','','','2000','MF','37','',TO_DATE('04-06-1981','dd-mm-yyyy'),'1','178','70');                               
INSERT INTO player VALUES ('2001043','������','K06','','�䷷����','2001','MF','24','',TO_DATE('20-02-1979','dd-mm-yyyy'),'1','177','73');                       
INSERT INTO player VALUES ('2001044','������','K06','','���漮','2001','MF','13','',TO_DATE('08-09-1978','dd-mm-yyyy'),'1','178','74');                         
INSERT INTO player VALUES ('2002137','�̰�','K06','�̰� �ǹ� �� �丮�̵���','�̰�','2002','MF','21','�����',TO_DATE('25-10-1979','dd-mm-yyyy'),'1','181','76');                                                                              
INSERT INTO player VALUES ('1997199','�̿���','K06','','�����','1997','MF','26','',TO_DATE('15-12-1973','dd-mm-yyyy'),'2','173','66');                         
INSERT INTO player VALUES ('2002072','�����','K06','','','2002','MF','14','',TO_DATE('22-03-1979','dd-mm-yyyy'),'1','176','67');                               
INSERT INTO player VALUES ('1999038','�����','K06','','����������','1999','MF','11','',TO_DATE('25-02-1977','dd-mm-yyyy'),'2','175','68');                     
INSERT INTO player VALUES ('1998365','���¼�','K06','','','2001','MF','30','',TO_DATE('16-06-1977','dd-mm-yyyy'),'1','177','64');                               
INSERT INTO player VALUES ('2001047','Ȳö��','K06','','��ٸ���','2001','MF','35','',TO_DATE('20-11-1978','dd-mm-yyyy'),'1','175','68');                       
INSERT INTO player VALUES ('1998235','�����','K06','','','','FW','39','',TO_DATE('10-10-1976','dd-mm-yyyy'),'1','178','71');                                   
INSERT INTO player VALUES ('2001048','�����','K06','','','2001','FW','25','',TO_DATE('22-05-1975','dd-mm-yyyy'),'1','182','78');                               
INSERT INTO player VALUES ('2002074','��â��','K06','','�Ӷ�','2002','FW','27','',TO_DATE('10-01-1978','dd-mm-yyyy'),'1','186','82');                           
INSERT INTO player VALUES ('2002127','���','K06','Sebastiao Pereira do Nascimento','','2002','FW','8','�����',TO_DATE('24-02-1976','dd-mm-yyyy'),'1','179','78');                                                                             
INSERT INTO player VALUES ('1997182','����ġ','K06','','�ٶ��� �Ƶ�','1996','FW','9','',TO_DATE('16-01-1972','dd-mm-yyyy'),'2','184','80');                     
INSERT INTO player VALUES ('1997195','�켺��','K06','','����','1996','FW','22','',TO_DATE('18-08-1973','dd-mm-yyyy'),'2','191','76');                           
INSERT INTO player VALUES ('2000103','����','K06','','¦��','2000','FW','12','',TO_DATE('08-07-1977','dd-mm-yyyy'),'1','180','71');                           
INSERT INTO player VALUES ('2002075','�ֱ���','K06','','','2002','FW','29','',TO_DATE('25-09-1979','dd-mm-yyyy'),'1','177','73');                               
INSERT INTO player VALUES ('2000087','�ϸ�','K06','','','2000','FW','10','�ݷҺ��',TO_DATE('14-05-1974','dd-mm-yyyy'),'1','168','65');                         
INSERT INTO player VALUES ('1900017','����','K06','','','1998','FW','32','',TO_DATE('07-09-1975','dd-mm-yyyy'),'2','188','80');                               
INSERT INTO player VALUES ('1900018','���丣','K06','','���丣','2001','FW','28','����������',TO_DATE('05-01-1975','dd-mm-yyyy'),'1','183','79');               
INSERT INTO player VALUES ('1900021','������','K04','CHOI, YOONGYUM','','1985','TM','','',TO_DATE('','dd-mm-yyyy'),'','178','80');                             
INSERT INTO player VALUES ('1900022','������','K04','HA, JAEHON','','1986','TC','','',TO_DATE('','dd-mm-yyyy'),'','174','67');                                 
INSERT INTO player VALUES ('1900023','����ȣ','K04','LEE, CHUNGHO','','1999','TC','','',TO_DATE('','dd-mm-yyyy'),'','185','83');                               
INSERT INTO player VALUES ('1900024','�ӱ���','K04','LIM, GIHAN','','1994','TC','','',TO_DATE('','dd-mm-yyyy'),'','177','85');                                 
INSERT INTO player VALUES ('1900025','�̰���','K04','LEE, KYOUNGTAE','','','TD','','',TO_DATE('','dd-mm-yyyy'),'','','');                                      
INSERT INTO player VALUES ('2002054','������','K04','','','','GK','31','',TO_DATE('20-04-1979','dd-mm-yyyy'),'2','180','72');                                   
INSERT INTO player VALUES ('1998499','����ȣ','K04','','','','GK','60','',TO_DATE('04-07-1968','dd-mm-yyyy'),'2','185','83');                                   
INSERT INTO player VALUES ('2001021','����','K04','','','','GK','1','',TO_DATE('07-11-1978','dd-mm-yyyy'),'2','192','85');                                      
INSERT INTO player VALUES ('2002052','�ѵ���','K04','','','','GK','21','',TO_DATE('25-08-1979','dd-mm-yyyy'),'2','183','78');                                   
INSERT INTO player VALUES ('2002126','�ٿ�','K04','','','','DF','61','',TO_DATE('25-09-1982','dd-mm-yyyy'),'2','190','80');                                     
INSERT INTO player VALUES ('1998182','��ö','K04','','','','DF','15','',TO_DATE('20-08-1973','dd-mm-yyyy'),'2','176','77');                                     
INSERT INTO player VALUES ('2000112','��â��','K04','','','','DF','23','',TO_DATE('31-12-1977','dd-mm-yyyy'),'2','175','67');                                   
INSERT INTO player VALUES ('1998424','�Ž�ȣ','K04','','','','DF','2','',TO_DATE('13-05-1975','dd-mm-yyyy'),'2','179','70');                                    
INSERT INTO player VALUES ('1998450','������','K04','','','','DF','5','',TO_DATE('08-12-1975','dd-mm-yyyy'),'1','177','75');                                    
INSERT INTO player VALUES ('2001022','�̹���','K04','','','','DF','25','',TO_DATE('11-02-1979','dd-mm-yyyy'),'1','182','75');                                   
INSERT INTO player VALUES ('2002053','�̻�ȫ','K04','','','','DF','30','',TO_DATE('04-02-1979','dd-mm-yyyy'),'1','178','68');                                   
INSERT INTO player VALUES ('1900001','����ȣ','K10','','','','TM','','',TO_DATE('29-01-1961','dd-mm-yyyy'),'1','','');                                          
INSERT INTO player VALUES ('1900002','����','K10','KIM, SAMSOO','','','TC','','',TO_DATE('08-02-1963','dd-mm-yyyy'),'1','','');                               
INSERT INTO player VALUES ('1900003','������','K10','YOO, DONGWOO','','','TC','40','',TO_DATE('07-03-1968','dd-mm-yyyy'),'1','177','70');                       
INSERT INTO player VALUES ('1900004','������','K10','JEON, GIHYUN','','','TD','','',TO_DATE('06-06-1965','dd-mm-yyyy'),'1','','');                              
INSERT INTO player VALUES ('2002047','������','K10','KANG, SUNGIL','','2002','GK','30','',TO_DATE('04-06-1979','dd-mm-yyyy'),'1','182','80');                   
INSERT INTO player VALUES ('2000057','�̽���','K10','LEE, SEUNG06','������','2000','GK','1','',TO_DATE('01-09-1972','dd-mm-yyyy'),'1','183','77');             
INSERT INTO player VALUES ('1997298','������','K10','CHOI, EUNSUNG','��ȣõȲ','1997','GK','21','',TO_DATE('05-04-1971','dd-mm-yyyy'),'1','184','82');          
INSERT INTO player VALUES ('1997312','����','K10','KIM, DAESOO','','1997','DF','15','',TO_DATE('20-03-1975','dd-mm-yyyy'),'1','184','74');                    
INSERT INTO player VALUES ('2002051','��α�','K10','','','','DF','3','',TO_DATE('25-04-1978','dd-mm-yyyy'),'1','171','65');                                    
INSERT INTO player VALUES ('2000110','�輺��','K10','KIM, SUNGKEUN','','2000','DF','33','',TO_DATE('20-06-1977','dd-mm-yyyy'),'1','180','73');                  
INSERT INTO player VALUES ('2001098','�迵��','K10','KIM, YOUNGKWEN','','2001','DF','5','',TO_DATE('12-10-1978','dd-mm-yyyy'),'1','180','70');                                                                                                  
INSERT INTO player VALUES ('1997301','������','K10','KIM, 06GSOO','','1977','DF','36','',TO_DATE('17-01-1975','dd-mm-yyyy'),'2','180','74');                   
INSERT INTO player VALUES ('1997309','��â��','K10','LEE, CHANGYUP','','1997','DF','6','',TO_DATE('19-11-1974','dd-mm-yyyy'),'2','174','64');                   
INSERT INTO player VALUES ('1997299','��ö��','K10','01G, CHULWOO','���ֱ����','2000','DF','7','',TO_DATE('01-04-1971','dd-mm-yyyy'),'2','172','65');        
INSERT INTO player VALUES ('2001116','�ݸ�','K10','O03 PAPA COLY','������Ÿ(Black Camel)','2001','DF','29','���װ�',TO_DATE('20-05-1975','dd-mm-yyyy'),'1','182','75');                                                                        
INSERT INTO player VALUES ('1997313','ȫ��ö','K10','HONG, KWANGCHUL','','1997','DF','4','',TO_DATE('09-10-1974','dd-mm-yyyy'),'2','172','65');                 
INSERT INTO player VALUES ('1998461','������','K10','KANG, 06GHOON','','1998','MF','38','',TO_DATE('20-02-1976','dd-mm-yyyy'),'1','175','65');                 
INSERT INTO player VALUES ('1997306','������','K10','KONG, OHKYUN','CROW','1997','MF','22','',TO_DATE('10-08-1974','dd-mm-yyyy'),'2','177','72');               
INSERT INTO player VALUES ('2002049','�豹��','K10','KIM, KOOKJIN','','2002','MF','16','',TO_DATE('09-02-1978','dd-mm-yyyy'),'1','172','62');                   
INSERT INTO player VALUES ('2001099','�赿��','K10','KIM, DONGSUN','','2001','MF','9','',TO_DATE('15-03-1978','dd-mm-yyyy'),'1','170','65');                    
INSERT INTO player VALUES ('2000109','�ڰ��','K10','PARK, KUNGGUY','','2000','MF','10','',TO_DATE('10-03-1977','dd-mm-yyyy'),'1','177','72');                  
INSERT INTO player VALUES ('2000111','�ڳ�ö','K10','PARK, RAECHEOL','','2000','MF','24','',TO_DATE('20-08-1977','dd-mm-yyyy'),'1','177','71');                 
INSERT INTO player VALUES ('2002048','�輺��','K10','BAE, SUNGJAE','','2002','MF','28','',TO_DATE('01-07-1979','dd-mm-yyyy'),'1','178','74');                   
INSERT INTO player VALUES ('2002121','��','K10','','','','MF','25','',TO_DATE('30-04-1979','dd-mm-yyyy'),'1','174','69');                                       
INSERT INTO player VALUES ('2002136','����','K10','','','','MF','26','',TO_DATE('03-06-1980','dd-mm-yyyy'),'1','169','70');                                   
INSERT INTO player VALUES ('2000056','�̰���','K10','LEE, KWANWOO','SIRIUS','2000','MF','8','',TO_DATE('25-02-1978','dd-mm-yyyy'),'1','175','69');              
INSERT INTO player VALUES ('2002050','�̱���','K10','LEE, KWANGJIN','','2002','MF','13','',TO_DATE('27-05-1972','dd-mm-yyyy'),'1','175','75');                  
INSERT INTO player VALUES ('2000113','�̻��','K10','LEE, SANGKYU','','2000','MF','27','',TO_DATE('05-09-1977','dd-mm-yyyy'),'1','175','65');                   
INSERT INTO player VALUES ('1999151','�ӿ���','K10','LIM, YOUNGJOO','','1999','MF','23','',TO_DATE('08-03-1976','dd-mm-yyyy'),'2','176','68');                  
INSERT INTO player VALUES ('2001101','������','K10','06G, YOUNGHOON','','2001','MF','12','',TO_DATE('01-05-1975','dd-mm-yyyy'),'1','174','73');                
INSERT INTO player VALUES ('1998178','������','K10','HAN, 06GKOOK','','2001','MF','19','',TO_DATE('19-07-1971','dd-mm-yyyy'),'1','179','71');                  
INSERT INTO player VALUES ('2002046','�豤��','K10','KIM, KWANGSUN','','2002','FW','32','',TO_DATE('17-06-1983','dd-mm-yyyy'),'1','175','68');                  
INSERT INTO player VALUES ('1997315','������','K10','KIM, EUN06G','����(SHARP)','1997','FW','18','',TO_DATE('08-04-1979','dd-mm-yyyy'),'2','184','72');        
INSERT INTO player VALUES ('1999152','������','K10','KIM. CHANJOONG','','1999','FW','17','',TO_DATE('14-06-1976','dd-mm-yyyy'),'2','182','72');                 
INSERT INTO player VALUES ('2001032','�̼�','K10','LEE, SEOK','','2002','FW','20','',TO_DATE('01-02-1979','dd-mm-yyyy'),'1','194','85');                        
INSERT INTO player VALUES ('2001100','Ź�ؼ�','K10','TAK, 06SUK','','2001','FW','11','',TO_DATE('24-03-1978','dd-mm-yyyy'),'1','178','69');                    
INSERT INTO player VALUES ('1900011','��ȣ��','K06','','','2000','TM','','',TO_DATE('26-03-1951','dd-mm-yyyy'),'1','172','77');                                 
INSERT INTO player VALUES ('1900012','�ڰ���','K06','','','','TC','','',TO_DATE('19-01-1961','dd-mm-yyyy'),'1','','');                                          
INSERT INTO player VALUES ('1900013','�赿��','K06','','','2000','TC','','',TO_DATE('11-06-1965','dd-mm-yyyy'),'1','180','88');                                 
INSERT INTO player VALUES ('1900014','�賲ǥ','K06','','','1995','TC','','',TO_DATE('27-01-1964','dd-mm-yyyy'),'2','180','77');                                 
INSERT INTO player VALUES ('1900015','�豤��','K06','','','1995','TD','','',TO_DATE('30-05-1968','dd-mm-yyyy'),'2','180','75');                                 
INSERT INTO player VALUES ('1900016','������','K06','','','1996','TD','','',TO_DATE('22-05-1970','dd-mm-yyyy'),'1','173','82');                                 
INSERT INTO player VALUES ('2001052','�����','K06','','�Ӳ���','2001','GK','41','',TO_DATE('07-02-1978','dd-mm-yyyy'),'2','186','78');                         
INSERT INTO player VALUES ('2002076','����','K06','','','2002','GK','40','',TO_DATE('11-10-1979','dd-mm-yyyy'),'1','189','83');                               
INSERT INTO player VALUES ('2000108','������','K06','','','2000','GK','31','',TO_DATE('22-11-1981','dd-mm-yyyy'),'1','187','77');                               
INSERT INTO player VALUES ('2000059','������','K06','','��������','2000','GK','1','',TO_DATE('10-06-1977','dd-mm-yyyy'),'2','186','78');                        
INSERT INTO player VALUES ('2001053','������','K06','','��������','2001','DF','33','',TO_DATE('28-02-1983','dd-mm-yyyy'),'1','180','76');                       
INSERT INTO player VALUES ('1997185','����ö','K06','','','1995','DF','3','',TO_DATE('07-11-1972','dd-mm-yyyy'),'2','176','73');                                
INSERT INTO player VALUES ('1997193','������','K06','','','1995','DF','17','',TO_DATE('03-07-1976','dd-mm-yyyy'),'2','184','68');                               
INSERT INTO player VALUES ('2001055','����ȫ','K06','','���Ӹ�','2001','DF','2','',TO_DATE('13-04-1978','dd-mm-yyyy'),'1','178','70');                          
INSERT INTO player VALUES ('2001046','������','K06','','��������','2001','DF','34','',TO_DATE('02-07-1978','dd-mm-yyyy'),'1','183','79');                       
INSERT INTO player VALUES ('2000058','�����','K06','','������ ��','2000','DF','5','',TO_DATE('11-03-1977','dd-mm-yyyy'),'1','184','77');                       
INSERT INTO player VALUES ('1997123','���ӻ�','K04','','','','DF','20','',TO_DATE('17-11-1971','dd-mm-yyyy'),'1','183','80');                                   
INSERT INTO player VALUES ('1997022','������','K04','','','','DF','36','',TO_DATE('07-07-1972','dd-mm-yyyy'),'1','181','72');                                   
INSERT INTO player VALUES ('2002058','������','K04','','','','DF','35','',TO_DATE('10-08-1983','dd-mm-yyyy'),'1','184','76');                                   
INSERT INTO player VALUES ('1999125','�ְŷ�','K04','','','','DF','4','',TO_DATE('26-06-1976','dd-mm-yyyy'),'1','183','77');                                    
INSERT INTO player VALUES ('2000001','������','K04','','','','DF','3','',TO_DATE('07-10-1977','dd-mm-yyyy'),'1','183','78');                                    
INSERT INTO player VALUES ('2002134','�丣����','K04','','','','DF','44','',TO_DATE('24-02-1978','dd-mm-yyyy'),'1','178','74');                                 
INSERT INTO player VALUES ('1900094','������','K03','CHO, MUGYUN','','','TC','','',TO_DATE('18-03-1961','dd-mm-yyyy'),'1','','');                               
INSERT INTO player VALUES ('1997001','�躴��','K03','KIM, BYUNGJI','','2001','GK','1','',TO_DATE('08-04-1970','dd-mm-yyyy'),'1','184','77');                    
INSERT INTO player VALUES ('2001069','����ȣ','K03','PARK, JUHO','','2001','GK','51','',TO_DATE('16-07-1982','dd-mm-yyyy'),'1','185','75');                                                                                                     
INSERT INTO player VALUES ('1997130','�̴���','K03','LEE, DAEHEE','','2000','GK','31','',TO_DATE('26-04-1974','dd-mm-yyyy'),'1','192','88');                    
INSERT INTO player VALUES ('1999133','����ȣ','K03','CHO, 06HO','','1999','GK','21','',TO_DATE('28-04-1973','dd-mm-yyyy'),'1','185','77');                     
INSERT INTO player VALUES ('2001065','���ι�','K03','HEO, INMOO','','2001','GK','41','',TO_DATE('14-04-1978','dd-mm-yyyy'),'1','187','81');                     
INSERT INTO player VALUES ('2001056','����','K03','KANG, YONG','','2001','DF','2','',TO_DATE('14-01-1979','dd-mm-yyyy'),'1','179','72');                        
INSERT INTO player VALUES ('1997080','����','K03','GO, BYUNGWOON','','1996','DF','16','',TO_DATE('28-09-1973','dd-mm-yyyy'),'1','180','73');                  
INSERT INTO player VALUES ('2002069','�豤��','K03','KIM, KWANGSUK','','2002','DF','39','',TO_DATE('12-02-1983','dd-mm-yyyy'),'1','183','72');                  
INSERT INTO player VALUES ('1997002','�����','K03','KIM, SANGHUN','','1996','DF','13','',TO_DATE('08-06-1973','dd-mm-yyyy'),'1','183','76');                   
INSERT INTO player VALUES ('2002062','�輮��','K03','KIM, SEOKWOO','','2002','DF','32','',TO_DATE('06-05-1983','dd-mm-yyyy'),'1','181','72');                   
INSERT INTO player VALUES ('1999139','������','K03','KIM, EUNSEOK','','1999','DF','5','',TO_DATE('14-03-1972','dd-mm-yyyy'),'1','185','80');                    
INSERT INTO player VALUES ('1999030','�ڹμ�','K03','PARK, MINSEO','','1999','DF','3','',TO_DATE('24-08-1976','dd-mm-yyyy'),'2','180','78');                    
INSERT INTO player VALUES ('2002064','������','K03','SUNG, JONGHUN','','2002','DF','34','',TO_DATE('02-04-1979','dd-mm-yyyy'),'1','178','74');                  
INSERT INTO player VALUES ('1998468','�κ�','K03','Jasen%ko Sabitovic','','1997','DF','4','',TO_DATE('29-03-1973','dd-mm-yyyy'),'1','185','78');                 
INSERT INTO player VALUES ('1997277','�����','K03','OH, MYUNGKWAN','','1998','DF','15','',TO_DATE('29-04-1974','dd-mm-yyyy'),'1','185','76');                  
INSERT INTO player VALUES ('2002063','�̵���','K03','LEE, DONGSIK','','2002','MF','33','',TO_DATE('15-03-1979','dd-mm-yyyy'),'1','183','77');                   
INSERT INTO player VALUES ('2002067','�̼���','K03','LEE, SOOKIL','','2002','DF','37','',TO_DATE('09-04-1979','dd-mm-yyyy'),'1','179','69');                    
INSERT INTO player VALUES ('1998444','�̽¿�','K03','LEE, SEUNGYUB','','1998','DF','12','',TO_DATE('12-10-1975','dd-mm-yyyy'),'1','180','74');                  
INSERT INTO player VALUES ('1997101','����ȭ','K03','','','','DF','25','',TO_DATE('04-04-1974','dd-mm-yyyy'),'1','182','76');                                   
INSERT INTO player VALUES ('1997190','�ϼ���','K03','HA, SEOKJU','','2001','DF','17','',TO_DATE('20-02-1968','dd-mm-yyyy'),'1','174','71');                     
INSERT INTO player VALUES ('2000065','������','K03','HEO, JAE06G','','2000','DF','29','',TO_DATE('02-06-1977','dd-mm-yyyy'),'1','175','70');                   
INSERT INTO player VALUES ('1997096','ȫ��','K03','HONG, MYUNGBO','','2002','DF','20','',TO_DATE('12-02-1969','dd-mm-yyyy'),'1','181','72');                  
INSERT INTO player VALUES ('1998472','��Ⳳ','K03','KIM, KINAM','','2000','MF','6','',TO_DATE('18-01-1971','dd-mm-yyyy'),'1','174','72');                      
INSERT INTO player VALUES ('2001059','����','K03','KIM, SANGROK','','2001','MF','14','',TO_DATE('25-02-1979','dd-mm-yyyy'),'1','173','63');                   
INSERT INTO player VALUES ('2001068','�����','K03','NA, HEEKEUN','','2001','FW','22','',TO_DATE('05-05-1979','dd-mm-yyyy'),'1','178','72');                    
INSERT INTO player VALUES ('2002133','����','K03','','','','MF','45','',TO_DATE('22-10-1974','dd-mm-yyyy'),'1','179','74');                                     
INSERT INTO player VALUES ('2002124','�޵�','K03','Medvid_I van','','2002','MF','44','',TO_DATE('13-10-1977','dd-mm-yyyy'),'1','180','78');                      
INSERT INTO player VALUES ('2002068','�ڱ濵','K03','PARK, KILYOUNG','','2002','MF','38','',TO_DATE('04-02-1980','dd-mm-yyyy'),'1','172','64');                 
INSERT INTO player VALUES ('1998203','�ڻ���','K03','PARK, SANGIN','','1995','DF','27','',TO_DATE('10-03-1976','dd-mm-yyyy'),'1','174','63');                   
INSERT INTO player VALUES ('2001131','����','K03','Josko Jelicic','','2002','MF','8','',TO_DATE('05-01-1971','dd-mm-yyyy'),'1','184','79');                     
INSERT INTO player VALUES ('2001061','������','K03','YOU, HYUNGOO','','2001','MF','26','',TO_DATE('25-01-1983','dd-mm-yyyy'),'1','170','68');                   
INSERT INTO player VALUES ('1999033','�̱��','K03','LEE, KIBU','','1999','MF','18','',TO_DATE('16-03-1976','dd-mm-yyyy'),'2','183','76');                      
INSERT INTO player VALUES ('2002070','�̻���','K03','LEE, SANGIN','','2002','DF','40','',TO_DATE('11-07-1979','dd-mm-yyyy'),'1','178','70');                    
INSERT INTO player VALUES ('2001062','������','K03','LEE, 06GWOON','','2001','MF','19','',TO_DATE('19-04-1978','dd-mm-yyyy'),'1','178','70');                  
INSERT INTO player VALUES ('2002071','���߱�','K03','LEE, 06GJYU','','2002','MF','42','',TO_DATE('06-06-1979','dd-mm-yyyy'),'1','170','64');                   
INSERT INTO player VALUES ('2002066','��âȣ','K03','LEE, CHANGHO','','2002','MF','36','',TO_DATE('15-03-1981','dd-mm-yyyy'),'1','175','75');                   
INSERT INTO player VALUES ('2001063','������','K03','CHOI, JONGBUM','','2001','MF','24','',TO_DATE('27-03-1978','dd-mm-yyyy'),'1','178','68');                  
INSERT INTO player VALUES ('2002061','���Ͱ�','K03','NAM, IKKYUNG','','2002','MF','30','',TO_DATE('26-01-1983','dd-mm-yyyy'),'1','177','70');                   
INSERT INTO player VALUES ('2001064','������','K03','YOON, BOYOUNG','','2001','FW','23','',TO_DATE('29-04-1978','dd-mm-yyyy'),'1','177','63');                  
INSERT INTO player VALUES ('1998443','�̵���','K03','LEE, DONGGOOK','','1998','FW','10','',TO_DATE('29-04-1979','dd-mm-yyyy'),'1','185','80');                  
INSERT INTO player VALUES ('2002060','������','K03','06G, JONGWAN','','2002','DF','28','',TO_DATE('05-08-1983','dd-mm-yyyy'),'1','188','82');                  
INSERT INTO player VALUES ('2002059','��¡��','K03','Jorge Claudio','','2001','FW','7','�����',TO_DATE('01-10-1975','dd-mm-yyyy'),'1','174','70');             
INSERT INTO player VALUES ('2000044','��ö��','K03','CHOI, CHULWOO','','2000','FW','9','',TO_DATE('30-11-1977','dd-mm-yyyy'),'1','185','78');                   
INSERT INTO player VALUES ('2001057','�ڳ�','K03','Goram Petreski','','2000','FW','11','',TO_DATE('23-05-1972','dd-mm-yyyy'),'1','180','76');                                                                                                   
INSERT INTO player VALUES ('1900095','��α�','K03','KIM, MINJYU','','2002','MF','35','',TO_DATE('29-09-1979','dd-mm-yyyy'),'1','178','71');                    
INSERT INTO player VALUES ('1900062','������','K01','JAE, HYUNGJIN','','2002','DF','38','',TO_DATE('25-06-1979','dd-mm-yyyy'),'1','179','75');                  
INSERT INTO player VALUES ('1900063','������','K01','KWAK, KIHOON','','2002','FW','33','',TO_DATE('05-11-1979','dd-mm-yyyy'),'1','177','72');                   
INSERT INTO player VALUES ('1900064','�ڹο�','K01','PARK, MINYOUNG','','2000','FW','37','',TO_DATE('07-03-1981','dd-mm-yyyy'),'1','174','67');                 
INSERT INTO player VALUES ('1900071','��ȸ��','K07','','','','TM','','',TO_DATE('11-10-1946','dd-mm-yyyy'),'1','','');                                          
INSERT INTO player VALUES ('1900072','������','K07','','','','TC','','',TO_DATE('27-10-1949','dd-mm-yyyy'),'1','','');                                          
INSERT INTO player VALUES ('1900073','���ȣ','K07','','','','TC','','',TO_DATE('05-10-1964','dd-mm-yyyy'),'1','','');                                          
INSERT INTO player VALUES ('1900074','��ö��','K07','','','','TC','','',TO_DATE('29-09-1965','dd-mm-yyyy'),'1','','');                                          
INSERT INTO player VALUES ('2002081','�迵��','K07','','','','GK','41','',TO_DATE('28-06-1983','dd-mm-yyyy'),'1','185','80');                                   
INSERT INTO player VALUES ('1997227','������','K07','','','','GK','1','',TO_DATE('02-10-1970','dd-mm-yyyy'),'1','185','76');                                    
INSERT INTO player VALUES ('2002088','������','K07','','','','GK','31','',TO_DATE('06-09-1983','dd-mm-yyyy'),'1','189','83');                                   
INSERT INTO player VALUES ('2002089','������','K07','','','','GK','33','',TO_DATE('12-11-1979','dd-mm-yyyy'),'1','185','81');                                   
INSERT INTO player VALUES ('1998212','��ö','K07','','','','DF','3','',TO_DATE('02-11-1971','dd-mm-yyyy'),'1','178','72');                                      
INSERT INTO player VALUES ('2002077','�谭��','K07','','','','DF','37','',TO_DATE('23-05-1979','dd-mm-yyyy'),'1','180','73');                                   
INSERT INTO player VALUES ('2002083','����ȣ','K07','','','','DF','39','',TO_DATE('09-06-1983','dd-mm-yyyy'),'1','184','79');                                   
INSERT INTO player VALUES ('1997213','���¿�','K07','','','','DF','7','',TO_DATE('08-11-1970','dd-mm-yyyy'),'1','180','74');                                    
INSERT INTO player VALUES ('1997209','������','K07','','','','DF','21','',TO_DATE('14-02-1973','dd-mm-yyyy'),'1','176','74');                                   
INSERT INTO player VALUES ('2002084','������','K07','','','','DF','42','',TO_DATE('23-06-1979','dd-mm-yyyy'),'1','','');                                        
INSERT INTO player VALUES ('2002085','��ȫö','K07','','','','DF','36','',TO_DATE('02-06-1979','dd-mm-yyyy'),'1','181','69');                                   
INSERT INTO player VALUES ('1998359','���ÿ�','K07','','','','DF','24','',TO_DATE('15-03-1972','dd-mm-yyyy'),'1','177','70');                                   
INSERT INTO player VALUES ('2001034','��â��','K07','','','','DF','5','',TO_DATE('10-07-1975','dd-mm-yyyy'),'1','183','75');                                    
INSERT INTO player VALUES ('2002090','�����','K07','','','','DF','34','',TO_DATE('31-08-1983','dd-mm-yyyy'),'1','184','82');                                   
INSERT INTO player VALUES ('1998425','�ֿ�ȣ','K07','','','','DF','6','',TO_DATE('24-10-1975','dd-mm-yyyy'),'1','185','80');                                    
INSERT INTO player VALUES ('2002092','ȫ����','K07','','','','DF','28','',TO_DATE('26-05-1979','dd-mm-yyyy'),'1','184','78');                                   
INSERT INTO player VALUES ('1999115','�����','K07','','','','MF','49','',TO_DATE('30-08-1980','dd-mm-yyyy'),'1','170','65');                                   
INSERT INTO player VALUES ('2001035','����','K07','','','','MF','12','',TO_DATE('24-08-1978','dd-mm-yyyy'),'1','178','72');                                   
INSERT INTO player VALUES ('2000030','�賲��','K07','','','','MF','4','',TO_DATE('14-03-1977','dd-mm-yyyy'),'1','182','76');                                    
INSERT INTO player VALUES ('2000032','����','K07','','','','MF','18','',TO_DATE('02-04-1978','dd-mm-yyyy'),'1','182','73');                                   
INSERT INTO player VALUES ('1997210','�赵��','K07','','','','MF','10','',TO_DATE('02-03-1972','dd-mm-yyyy'),'2','181','69');                                   
INSERT INTO player VALUES ('2002078','�赿��','K07','','','','MF','38','',TO_DATE('06-05-1983','dd-mm-yyyy'),'1','174','64');                                   
INSERT INTO player VALUES ('1997102','����','K07','','','','MF','2','',TO_DATE('15-04-1974','dd-mm-yyyy'),'1','177','73');                                    
INSERT INTO player VALUES ('2002079','�輺��','K07','','','','MF','44','',TO_DATE('20-01-1979','dd-mm-yyyy'),'1','178','68');                                   
INSERT INTO player VALUES ('2002080','�����','K07','','','','MF','26','',TO_DATE('17-08-1979','dd-mm-yyyy'),'1','181','71');                                   
INSERT INTO player VALUES ('2002082','���ȯ','K07','','','','MF','25','',TO_DATE('23-05-1977','dd-mm-yyyy'),'1','170','62');                                   
INSERT INTO player VALUES ('1999100','������','K07','','','','MF','13','',TO_DATE('09-06-1976','dd-mm-yyyy'),'2','172','65');                                   
INSERT INTO player VALUES ('1998428','������','K07','','','','MF','11','',TO_DATE('10-07-1973','dd-mm-yyyy'),'1','173','68');                                   
INSERT INTO player VALUES ('2002086','�뺴��','K07','','','','MF','22','',TO_DATE('29-09-1979','dd-mm-yyyy'),'1','177','67');                                   
INSERT INTO player VALUES ('2002087','������','K07','','','','MF','43','',TO_DATE('11-04-1979','dd-mm-yyyy'),'1','176','69');                                   
INSERT INTO player VALUES ('1997305','������','K07','','','','MF','9','',TO_DATE('27-09-1974','dd-mm-yyyy'),'1','176','75');                                    
INSERT INTO player VALUES ('2002132','�ǹ�','K07','','','','MF','45','',TO_DATE('20-06-1977','dd-mm-yyyy'),'1','173','67');                                     
INSERT INTO player VALUES ('2000031','���뱸','K07','','','','MF','15','',TO_DATE('08-08-1977','dd-mm-yyyy'),'1','168','60');                                   
INSERT INTO player VALUES ('2001127','�̹�','K07','','','','MF','14','',TO_DATE('27-10-1974','dd-mm-yyyy'),'1','174','69');                                     
INSERT INTO player VALUES ('2001038','�̿���','K07','','','','MF','30','',TO_DATE('30-07-1978','dd-mm-yyyy'),'1','175','65');                                   
INSERT INTO player VALUES ('1998423','�Ӱ���','K07','','','','MF','29','',TO_DATE('28-07-1975','dd-mm-yyyy'),'1','172','68');                                   
INSERT INTO player VALUES ('2001036','����ȣ','K07','','','','MF','23','',TO_DATE('06-04-1978','dd-mm-yyyy'),'1','176','71');                                   
INSERT INTO player VALUES ('2001039','�ϱ���','K07','','','','MF','32','',TO_DATE('10-03-1982','dd-mm-yyyy'),'1','180','65');                                   
INSERT INTO player VALUES ('2000003','���ö','K07','','','','FW','20','',TO_DATE('26-08-1977','dd-mm-yyyy'),'1','183','78');                                   
INSERT INTO player VALUES ('2000154','������','K07','','','','FW','16','',TO_DATE('23-08-1974','dd-mm-yyyy'),'1','172','70');                                   
INSERT INTO player VALUES ('1997214','���','K07','','','','FW','8','',TO_DATE('15-12-1970','dd-mm-yyyy'),'1','175','74');                                    
INSERT INTO player VALUES ('1999149','���Ѽ�','K07','','','','FW','40','',TO_DATE('10-03-1976','dd-mm-yyyy'),'2','177','69');                                   
INSERT INTO player VALUES ('1999161','���ڸ�','K07','','','','FW','17','',TO_DATE('09-12-1973','dd-mm-yyyy'),'1','180','78');                                   
INSERT INTO player VALUES ('2002032','�ź�ȣ','K07','','','','FW','27','',TO_DATE('26-04-1977','dd-mm-yyyy'),'1','177','75');                                   
INSERT INTO player VALUES ('2001120','����','K07','','','','FW','27','',TO_DATE('26-01-1975','dd-mm-yyyy'),'1','180','67');                                     
INSERT INTO player VALUES ('2000037','�ϼ���','K07','','','','FW','35','',TO_DATE('03-02-1982','dd-mm-yyyy'),'1','179','68');                                   
INSERT INTO player VALUES ('2002091','ȫ��ǥ','K07','','','','FW','19','',TO_DATE('28-10-1979','dd-mm-yyyy'),'1','182','73');                                   
INSERT INTO player VALUES ('1900081','����ȯ','K05','','','','TM','','',TO_DATE('24-05-1961','dd-mm-yyyy'),'1','','');                                          
INSERT INTO player VALUES ('1900082','����ö','K05','','','','TC','','',TO_DATE('26-05-1958','dd-mm-yyyy'),'1','','');                                          
INSERT INTO player VALUES ('1900083','�̰���','K05','','','','TC','','',TO_DATE('14-04-1969','dd-mm-yyyy'),'1','','');                                          
INSERT INTO player VALUES ('1900084','�ڵ���','K05','','','','TC','','',TO_DATE('03-11-1970','dd-mm-yyyy'),'1','','');                                          
INSERT INTO player VALUES ('1900085','����','K05','','','','TD','','',TO_DATE('16-03-1969','dd-mm-yyyy'),'1','','');                                          
INSERT INTO player VALUES ('1900086','����ġ','K05','','','','TD','','',TO_DATE('06-01-1969','dd-mm-yyyy'),'1','','');                                          
INSERT INTO player VALUES ('1997106','���̼�','K05','KIM, ISUB','�賲','2002','GK','45','',TO_DATE('06-04-1974','dd-mm-yyyy'),'1','185','78');                  
INSERT INTO player VALUES ('2002007','�ڰ���','K05','PARK, KWANMIN','','2002','GK','31','',TO_DATE('26-05-1979','dd-mm-yyyy'),'1','188','85');                  
INSERT INTO player VALUES ('1998179','�ڵ���','K05','','','','GK','60','',TO_DATE('03-11-1970','dd-mm-yyyy'),'1','187','78');                                   
INSERT INTO player VALUES ('1998138','�̿��','K05','LEE, YONGBAL','','1994','GK','18','',TO_DATE('15-03-1973','dd-mm-yyyy'),'1','183','77');                   
INSERT INTO player VALUES ('2002006','��â��','K05','LEE, CHANGMIN','����','2002','GK','1','',TO_DATE('25-01-1980','dd-mm-yyyy'),'1','191','87');             
INSERT INTO player VALUES ('2000010','����','K05','KIM, DAEKEON','','2000','DF','26','',TO_DATE('27-04-1977','dd-mm-yyyy'),'1','183','78');                   
INSERT INTO player VALUES ('1997159','�����','K05','KIM, BONGHYUN','','1995','MF','23','',TO_DATE('07-07-1974','dd-mm-yyyy'),'1','188','74');                  
INSERT INTO player VALUES ('2002009','��â��','K05','KIM, CHANGMIN','�߻���','2002','DF','36','',TO_DATE('22-09-1979','dd-mm-yyyy'),'1','181','68');            
INSERT INTO player VALUES ('2002005','�ڵ���','K05','PARK, DONGHYUK','��ȣ','2002','DF','23','',TO_DATE('18-04-1979','dd-mm-yyyy'),'1','185','78');             
INSERT INTO player VALUES ('2002012','���μ�','K05','BAEK, INSEOK','����','2002','MF','40','',TO_DATE('08-08-1979','dd-mm-yyyy'),'1','179','72');               
INSERT INTO player VALUES ('1998391','������','K05','SEO, HYUKSU','�˵�','1998','DF','6','',TO_DATE('01-10-1973','dd-mm-yyyy'),'1','178','77');                 
INSERT INTO player VALUES ('2002004','�ȱ�ȣ','K05','AN, KWANGHO','�ձ�','2002','DF','15','',TO_DATE('10-01-1979','dd-mm-yyyy'),'1','190','78');                
INSERT INTO player VALUES ('1999076','������','K05','LIM, HONGHUN','����','1999','DF','31','',TO_DATE('14-06-1976','dd-mm-yyyy'),'1','182','74');               
INSERT INTO player VALUES ('1997148','����ö','K05','CHOI, JINCHEUL','','1996','DF','4','',TO_DATE('26-03-1971','dd-mm-yyyy'),'1','187','75');                  
INSERT INTO player VALUES ('1999061','������','K05','HAN, JONGSUNG','','1999','DF','13','',TO_DATE('30-01-1977','dd-mm-yyyy'),'1','177','70');                  
INSERT INTO player VALUES ('1999160','ȣ������','K05','Rogerio Prateat','���»���','1999','DF','3','',TO_DATE('09-03-1973','dd-mm-yyyy'),'1','185','85');      
INSERT INTO player VALUES ('1997031','Ȳ����','K05','','','','DF','98','',TO_DATE('09-05-1972','dd-mm-yyyy'),'1','176','68');                                   
INSERT INTO player VALUES ('2000023','�����','K05','KO, KWANYOUNG','���','2000','MF','32','',TO_DATE('07-12-1981','dd-mm-yyyy'),'1','180','72');              
INSERT INTO player VALUES ('1997155','��淮','K05','KIM, KYUNGRYANG','','1996','MF','19','',TO_DATE('22-12-1973','dd-mm-yyyy'),'1','173','65');                
INSERT INTO player VALUES ('2000025','������','K05','','','','MF','35','',TO_DATE('09-03-1981','dd-mm-yyyy'),'1','176','63');                                   
INSERT INTO player VALUES ('2002001','��������','K05','Leo03 Leiria','����','2002','MF','5','',TO_DATE('26-06-1971','dd-mm-yyyy'),'1','183','77');             
INSERT INTO player VALUES ('1998269','�����','K05','MYUNG, JAEYOENG','','1997','MF','7','',TO_DATE('26-02-1973','dd-mm-yyyy'),'2','173','63');                 
INSERT INTO player VALUES ('1997149','���缷','K05','BYUN, JAESUB','������ũ','1997','MF','11','',TO_DATE('17-09-1975','dd-mm-yyyy'),'2','170','63');           
INSERT INTO player VALUES ('2002002','����','K05','Raphael JoseBotti Zacarias Sena','Botti','2002','MF','10','',TO_DATE('23-02-1981','dd-mm-yyyy'),'1','174','68');                                                                             
INSERT INTO player VALUES ('2001123','�񿡶�','K05','Vieira','','2001','MF','21','',TO_DATE('25-02-1974','dd-mm-yyyy'),'1','176','73');                         
INSERT INTO player VALUES ('1998460','������','K05','SEO, DONGWON','','1998','MF','22','',TO_DATE('14-08-1975','dd-mm-yyyy'),'1','184','78');                   
INSERT INTO player VALUES ('2000019','�ȴ���','K05','AN, DAEHYUN','','2000','MF','25','',TO_DATE('20-08-1977','dd-mm-yyyy'),'1','179','72');                    
INSERT INTO player VALUES ('2000018','������','K05','YANG, HYUN06G','','2000','MF','14','',TO_DATE('25-07-1977','dd-mm-yyyy'),'1','176','72');                 
INSERT INTO player VALUES ('2000022','������','K05','YOU, WONSUOB','�Ӹ�','2000','MF','37','',TO_DATE('24-05-1981','dd-mm-yyyy'),'1','180','77');               
INSERT INTO player VALUES ('2002008','�̼�ö','K05','LEE, SUCHEUL','','2002','MF','34','',TO_DATE('26-05-1979','dd-mm-yyyy'),'1','171','68');                   
INSERT INTO player VALUES ('2002013','�Ӵ���','K05','LIM, DAHAN','�޸�','2002','DF','39','',TO_DATE('21-07-1979','dd-mm-yyyy'),'1','181','67');                 
INSERT INTO player VALUES ('1997087','������','K05','JEON, KYOUNGJOON','','1991','MF','16','',TO_DATE('10-09-1973','dd-mm-yyyy'),'1','178','68');               
INSERT INTO player VALUES ('2000021','�ֿ���','K05','CHOI, YOUNGHOON','����','2000','MF','27','',TO_DATE('18-03-1981','dd-mm-yyyy'),'1','178','71');          
INSERT INTO player VALUES ('2001028','�߿��','K05','CHOO, WOONKI','�ھ˶�','2001','MF','17','',TO_DATE('03-04-1978','dd-mm-yyyy'),'1','173','69');             
INSERT INTO player VALUES ('1998393','����ö','K05','HA, EUNCHEUL','','1998','MF','29','',TO_DATE('23-06-1975','dd-mm-yyyy'),'1','176','69');                   
INSERT INTO player VALUES ('2001030','��α�','K05','GO, MINGI','','2001','FW','24','',TO_DATE('01-07-1978','dd-mm-yyyy'),'1','178','70');                      
INSERT INTO player VALUES ('1998143','�赵��','K05','KIM, DOHOON','���ݱ�','1995','FW','9','',TO_DATE('21-07-1970','dd-mm-yyyy'),'1','182','77');               
INSERT INTO player VALUES ('2002011','�迬��','K05','KIM, YEONGUN','','2002','FW','44','',TO_DATE('12-03-1981','dd-mm-yyyy'),'1','188','77');                   
INSERT INTO player VALUES ('2001002','������','K05','KIM, HYUNKI','','2001','FW','28','',TO_DATE('19-03-1982','dd-mm-yyyy'),'1','190','82');                    
INSERT INTO player VALUES ('2001003','���õ�','K05','NAM, KUNGDO','','2001','FW','33','',TO_DATE('04-06-1982','dd-mm-yyyy'),'1','186','80');                    
INSERT INTO player VALUES ('2000101','������','K05','MOON, TAEHYUK','','2002','FW','41','',TO_DATE('31-03-1983','dd-mm-yyyy'),'1','178','74');                  
INSERT INTO player VALUES ('1998392','�ڼ���','K05','PARK, SUNGBAE','����','1998','FW','8','',TO_DATE('28-11-1975','dd-mm-yyyy'),'2','181','76');             
INSERT INTO player VALUES ('2002125','����м�','K05','Edmilson','EDY','2002','FW','20','',TO_DATE('29-05-1968','dd-mm-yyyy'),'1','184','79');                  
INSERT INTO player VALUES ('2002003','��Ű','K05','','','','FW','99','',TO_DATE('30-04-1971','dd-mm-yyyy'),'1','170','76');                                     
INSERT INTO player VALUES ('1900087','������','K05','KIM, EUNIK','','2000','FW','35','',TO_DATE('09-03-1981','dd-mm-yyyy'),'1','176','65');                     
INSERT INTO player VALUES ('1900091','�ּ�ȣ','K03','CHOI, SOONHO','','','TM','','',TO_DATE('10-01-1962','dd-mm-yyyy'),'1','','');                              
INSERT INTO player VALUES ('1900092','������','K03','YU, DONGKWAN','','','TC','','',TO_DATE('12-05-1963','dd-mm-yyyy'),'1','','');                              
INSERT INTO player VALUES ('1900093','���⵿','K03','CHUNG, GIDONG','','','TC','','',TO_DATE('13-05-1961','dd-mm-yyyy'),'1','','');                             
INSERT INTO player VALUES ('2001111','�̹��ں�','K02','','','','MF','47','',TO_DATE('08-02-1975','dd-mm-yyyy'),'1','185','78');                                 
INSERT INTO player VALUES ('2002020','�̼���','K02','LEE, SUNWOO','','','FW','33','',TO_DATE('01-04-1978','dd-mm-yyyy'),'1','174','68');                        
INSERT INTO player VALUES ('2001074','�̿���','K02','LEE, YEOSUNG','','','MF','36','',TO_DATE('05-01-1983','dd-mm-yyyy'),'1','179','63');                       
INSERT INTO player VALUES ('1997064','�̿��','K02','LEE, YONGWOO','','','FW','27','',TO_DATE('20-07-1977','dd-mm-yyyy'),'1','175','70');                       
INSERT INTO player VALUES ('2002019','������','K02','LEE, JONGMIN','','','MF','30','',TO_DATE('01-09-1983','dd-mm-yyyy'),'1','174','65');                       
INSERT INTO player VALUES ('1998437','������','K02','06G, YONGHOON','','','MF','9','',TO_DATE('11-03-1979','dd-mm-yyyy'),'1','175','67');                      
INSERT INTO player VALUES ('1998436','������','K02','CHO, MANKEUN','','','FW','34','',TO_DATE('28-11-1977','dd-mm-yyyy'),'1','177','67');                       
INSERT INTO player VALUES ('1997070','�����','K02','CHO, JAEMIN','','','MF','35','',TO_DATE('22-05-1978','dd-mm-yyyy'),'1','180','71');                        
INSERT INTO player VALUES ('1997043','������','K02','CHO, HYUNDOO','','','MF','12','',TO_DATE('23-11-1973','dd-mm-yyyy'),'1','176','68');                       
INSERT INTO player VALUES ('2002017','�ּ���','K02','CHOI, SUNGYONG','','','DF','20','',TO_DATE('25-12-1975','dd-mm-yyyy'),'1','173','70');                     
INSERT INTO player VALUES ('2002018','���±�','K02','HA, TAEKEUN','','','MF','29','',TO_DATE('01-07-1983','dd-mm-yyyy'),'1','182','75');                        
INSERT INTO player VALUES ('2002122','��Ʈ��','K02','Mitrovic Slavisa','','','FW','19','�����Ͼ�',TO_DATE('05-07-1977','dd-mm-yyyy'),'1','192','89');           
INSERT INTO player VALUES ('1997048','�ڰ���','K02','PARK, KUNHA','','','FW','18','',TO_DATE('25-07-1971','dd-mm-yyyy'),'1','180','75');                        
INSERT INTO player VALUES ('2000168','����','K02','Sandro Cardoso Dos Santos','','','FW','13','�����',TO_DATE('22-03-1980','dd-mm-yyyy'),'1','182','78');    
INSERT INTO player VALUES ('2002023','��ȭ��','K02','YUN, HWAPYUNG','','','FW','42','',TO_DATE('26-03-1983','dd-mm-yyyy'),'1','182','74');                      
INSERT INTO player VALUES ('2002022','�̰���','K02','LEE, KWANHEE','','','FW','39','',TO_DATE('29-06-1983','dd-mm-yyyy'),'1','180','70');                       
INSERT INTO player VALUES ('1900051','������','K09','','','','TM','','',TO_DATE('19-03-1954','dd-mm-yyyy'),'1','','');                                          
INSERT INTO player VALUES ('1900052','���Ἦ','K09','','','','TC','','',TO_DATE('03-02-1959','dd-mm-yyyy'),'1','','');                                          
INSERT INTO player VALUES ('1900053','������','K09','','','','TC','','',TO_DATE('26-03-1959','dd-mm-yyyy'),'1','','');                                          
INSERT INTO player VALUES ('1900054','�̿���','K09','','','','TC','','',TO_DATE('27-10-1963','dd-mm-yyyy'),'1','','');                                          
INSERT INTO player VALUES ('1900055','���ȭ','K09','','','','TC','','',TO_DATE('15-03-1970','dd-mm-yyyy'),'1','','');                                          
INSERT INTO player VALUES ('2002094','�ڵ���','K09','','','','GK','1','',TO_DATE('03-05-1981','dd-mm-yyyy'),'1','190','89');                                    
INSERT INTO player VALUES ('2000125','���ö','K09','','','','GK','21','',TO_DATE('28-07-1977','dd-mm-yyyy'),'1','185','78');                                   
INSERT INTO player VALUES ('1997236','���Ǽ�','K09','','','','GK','44','',TO_DATE('12-01-1960','dd-mm-yyyy'),'1','192','87');                                   
INSERT INTO player VALUES ('2001018','���½�','K09','','','','GK','31','',TO_DATE('08-01-1983','dd-mm-yyyy'),'1','185','75');                                   
INSERT INTO player VALUES ('2000117','�赿��','K09','','','','DF','4','',TO_DATE('29-01-1981','dd-mm-yyyy'),'1','182','74');                                    
INSERT INTO player VALUES ('1998414','�輺��','K09','','','','DF','19','',TO_DATE('13-04-1974','dd-mm-yyyy'),'1','178','75');                                   
INSERT INTO player VALUES ('2002093','��ġ��','K09','','','','DF','17','',TO_DATE('29-07-1983','dd-mm-yyyy'),'1','183','76');                                   
INSERT INTO player VALUES ('2002095','�ڿ��','K09','','','','DF','5','',TO_DATE('03-12-1980','dd-mm-yyyy'),'1','183','75');                                    
INSERT INTO player VALUES ('2000119','�ڿ�ȣ','K09','','','','DF','14','',TO_DATE('25-03-1981','dd-mm-yyyy'),'1','182','69');                                   
INSERT INTO player VALUES ('1997068','������','K09','','','','DF','6','',TO_DATE('19-04-1977','dd-mm-yyyy'),'1','182','78');                                    
INSERT INTO player VALUES ('1997266','������','K09','','','','DF','45','',TO_DATE('20-03-1972','dd-mm-yyyy'),'1','175','70');                                   
INSERT INTO player VALUES ('2001012','�ȼ���','K09','','','','MF','2','',TO_DATE('11-09-1982','dd-mm-yyyy'),'1','176','63');                                    
INSERT INTO player VALUES ('1998420','�̻���','K09','','','','DF','25','',TO_DATE('11-10-1975','dd-mm-yyyy'),'2','185','80');                                   
INSERT INTO player VALUES ('2002102','����ȣ','K09','','','','DF','34','',TO_DATE('07-04-1986','dd-mm-yyyy'),'1','184','71');                                   
INSERT INTO player VALUES ('1997225','������','K09','','','','DF','3','',TO_DATE('17-04-1974','dd-mm-yyyy'),'1','185','79');                                    
INSERT INTO player VALUES ('1999048','�赵��','K09','','','','MF','40','',TO_DATE('28-05-1976','dd-mm-yyyy'),'1','168','68');                                   
INSERT INTO player VALUES ('2001072','��μ�','K09','','','','MF','24','',TO_DATE('28-05-1982','dd-mm-yyyy'),'1','175','64');                                   
INSERT INTO player VALUES ('2001008','������','K09','','','','MF','41','',TO_DATE('25-05-1982','dd-mm-yyyy'),'1','180','70');                                   
INSERT INTO player VALUES ('2002096','������','K09','','','','MF','37','',TO_DATE('21-03-1983','dd-mm-yyyy'),'1','172','65');                                   
INSERT INTO player VALUES ('2000049','�ȵ巹','K09','','','','MF','18','�����',TO_DATE('16-11-1972','dd-mm-yyyy'),'1','172','69');                             
INSERT INTO player VALUES ('2002097','�Ȼ���','K09','','','','MF','33','',TO_DATE('05-03-1986','dd-mm-yyyy'),'1','176','67');                                   
INSERT INTO player VALUES ('2002098','������','K09','','','','MF','39','',TO_DATE('26-08-1979','dd-mm-yyyy'),'1','176','70');                                                                                                                   
INSERT INTO player VALUES ('1997133','�����','K09','','','','MF','43','',TO_DATE('28-08-1973','dd-mm-yyyy'),'2','175','67');                                   
INSERT INTO player VALUES ('2000048','�̿�ǥ','K09','','','','MF','12','',TO_DATE('23-04-1977','dd-mm-yyyy'),'1','176','66');                                   
INSERT INTO player VALUES ('2002100','���ر�','K09','','','','MF','36','',TO_DATE('25-04-1982','dd-mm-yyyy'),'1','183','74');                                   
INSERT INTO player VALUES ('2002101','������','K09','','','','MF','42','',TO_DATE('21-11-1984','dd-mm-yyyy'),'1','183','68');                                   
INSERT INTO player VALUES ('1998413','������','K09','','','','FW','23','',TO_DATE('08-01-1976','dd-mm-yyyy'),'1','180','70');                                   
INSERT INTO player VALUES ('1999051','��â��','K09','','','','MF','27','',TO_DATE('10-08-1983','dd-mm-yyyy'),'2','170','63');                                   
INSERT INTO player VALUES ('2000118','�ֿ���','K09','','','','MF','13','',TO_DATE('08-11-1981','dd-mm-yyyy'),'1','173','65');                                   
INSERT INTO player VALUES ('2000120','�躴ä','K09','','','','FW','15','',TO_DATE('14-04-1981','dd-mm-yyyy'),'1','180','72');                                   
INSERT INTO player VALUES ('1999046','�輺��','K09','','','','MF','8','',TO_DATE('17-09-1976','dd-mm-yyyy'),'2','178','72');                                    
INSERT INTO player VALUES ('2002119','�ѵ�','K09','','','','FW','99','�����',TO_DATE('20-06-1974','dd-mm-yyyy'),'1','187','84');                               
INSERT INTO player VALUES ('2002105','������','K09','','','','FW','11','�����',TO_DATE('03-12-1976','dd-mm-yyyy'),'1','175','77');                             
INSERT INTO player VALUES ('2001005','�ڼ�ȣ','K09','','','','FW','30','',TO_DATE('27-07-1982','dd-mm-yyyy'),'1','187','73');                                   
INSERT INTO player VALUES ('2001108','����ȭ','K09','','','','MF','16','',TO_DATE('13-06-1978','dd-mm-yyyy'),'1','175','67');                                   
INSERT INTO player VALUES ('1999047','����ȯ','K09','','','','FW','20','',TO_DATE('14-01-1977','dd-mm-yyyy'),'1','178','70');                                   
INSERT INTO player VALUES ('1999005','������','K09','','','','FW','28','',TO_DATE('30-08-1976','dd-mm-yyyy'),'2','181','73');                                   
INSERT INTO player VALUES ('2002099','������','K09','','','','FW','7','',TO_DATE('08-01-1980','dd-mm-yyyy'),'1','184','74');                                    
INSERT INTO player VALUES ('2002103','������','K09','','','','FW','22','',TO_DATE('23-08-1985','dd-mm-yyyy'),'1','183','68');                                   
INSERT INTO player VALUES ('1999044','������','K09','','','','MF','26','',TO_DATE('01-03-1974','dd-mm-yyyy'),'2','180','78');                                   
INSERT INTO player VALUES ('2000053','���¿�','K09','','','','FW','9','',TO_DATE('13-03-1981','dd-mm-yyyy'),'1','173','66');                                    
INSERT INTO player VALUES ('2002104','�ѵ���','K09','','','','FW','32','',TO_DATE('06-04-1986','dd-mm-yyyy'),'1','174','61');                                   
INSERT INTO player VALUES ('2001004','����ȭ','K09','','','','FW','29','',TO_DATE('31-10-1982','dd-mm-yyyy'),'1','173','63');                                   
INSERT INTO player VALUES ('2000164','��ī����','K09','','','','MF','10','�����',TO_DATE('08-06-1976','dd-mm-yyyy'),'1','189','71');                           
INSERT INTO player VALUES ('2001082','������','K01','KWON, 06GHYUK','','2001','GK','1','',TO_DATE('02-08-1978','dd-mm-yyyy'),'1','195','80');                  
INSERT INTO player VALUES ('1999070','��â��','K01','PARK, CHANGZOO','','1999','GK','40','',TO_DATE('30-09-1972','dd-mm-yyyy'),'1','187','86');                 
INSERT INTO player VALUES ('1997020','������','K01','SEO, DONGMYUNG','','2002','GK','21','',TO_DATE('04-05-1974','dd-mm-yyyy'),'1','196','94');                 
INSERT INTO player VALUES ('1998410','������','K01','YANG, JIWON','','1998','GK','45','',TO_DATE('28-04-1974','dd-mm-yyyy'),'1','181','75');                    
INSERT INTO player VALUES ('2002039','�ֹ���','K01','CHOI, MOOLIM','','2002','GK','31','',TO_DATE('15-04-1979','dd-mm-yyyy'),'1','185','79');                   
INSERT INTO player VALUES ('2002034','������','K01','KIM, YOONGOO','','2002','DF','20','',TO_DATE('01-09-1979','dd-mm-yyyy'),'1','182','75');                   
INSERT INTO player VALUES ('2001106','��������','K01','Cleber Arild','','2001','DF','3','�����',TO_DATE('21-01-1969','dd-mm-yyyy'),'1','186','79');            
INSERT INTO player VALUES ('2001080','�ڰ��','K01','PARK, JYUNGSAM','','2001','DF','25','',TO_DATE('06-06-1978','dd-mm-yyyy'),'1','188','74');                 
INSERT INTO player VALUES ('1997004','������','K01','PARK, JONGWOOK','','1997','DF','29','',TO_DATE('11-01-1975','dd-mm-yyyy'),'1','185','74');                 
INSERT INTO player VALUES ('2002035','����ȯ','K01','BYUN, SUNGHWAN','','2002','DF','23','',TO_DATE('22-12-1979','dd-mm-yyyy'),'1','176','69');                 
INSERT INTO player VALUES ('1998366','�ջ�ȣ','K01','SON, SANGHO','','1997','DF','28','',TO_DATE('04-05-1974','dd-mm-yyyy'),'1','187','78');                    
INSERT INTO player VALUES ('2002044','������','K01','YOU, JAEHYUNG','','2002','DF','39','',TO_DATE('24-08-1977','dd-mm-yyyy'),'1','180','79');                  
INSERT INTO player VALUES ('2001077','������','K01','CHOI, SAEKWON','','2001','DF','4','',TO_DATE('26-06-1978','dd-mm-yyyy'),'1','184','80');                   
INSERT INTO player VALUES ('1999069','�ϼ���','K01','HA, SUNGYONG','','1999','DF','43','',TO_DATE('05-10-1976','dd-mm-yyyy'),'1','179','75');                   
INSERT INTO player VALUES ('2000082','������','K01','HAN, JEUNGIL','','2000','DF','41','',TO_DATE('03-03-1977','dd-mm-yyyy'),'1','172','65');                   
INSERT INTO player VALUES ('2000054','�����','K01','KIM, KUNHYUNG','','2000','MF','17','',TO_DATE('11-09-1979','dd-mm-yyyy'),'1','176','70');                  
INSERT INTO player VALUES ('1999058','�赵��','K01','KIM, DOKYUN','','1999','MF','6','',TO_DATE('13-01-1977','dd-mm-yyyy'),'1','184','78');                     
INSERT INTO player VALUES ('2001083','�ڱ��','K01','PARK, KIWOOK','','2001','MF','18','',TO_DATE('22-12-1978','dd-mm-yyyy'),'1','175','68');                   
INSERT INTO player VALUES ('2002028','������','K01','PARK, JINSUP','','2002','MF','2','',TO_DATE('11-03-1977','dd-mm-yyyy'),'1','179','68');                    
INSERT INTO player VALUES ('2001079','������','K01','SEO, DOUKGUY','','2001','DF','5','',TO_DATE('22-10-1978','dd-mm-yyyy'),'1','182','72');                    
INSERT INTO player VALUES ('2002130','����','K01','Edmilson Alves','','2002','MF','7','�����',TO_DATE('17-02-1976','dd-mm-yyyy'),'1','182','70');              
INSERT INTO player VALUES ('1999055','�̱��','K01','LEE, KILYONG','','1999','MF','22','',TO_DATE('30-03-1976','dd-mm-yyyy'),'2','183','78');                   
INSERT INTO player VALUES ('2002036','������','K01','LEE, YOONSUB','','2002','MF','26','',TO_DATE('30-07-1979','dd-mm-yyyy'),'1','184','77');                   
INSERT INTO player VALUES ('2002029','��õ��','K01','LEE, CHUNSU','','2002','MF','9','',TO_DATE('09-07-1981','dd-mm-yyyy'),'1','174','65');                     
INSERT INTO player VALUES ('2002033','�强��','K01','01G, SUNGWOOK','','2002','MF','19','',TO_DATE('01-09-1979','dd-mm-yyyy'),'1','174','71');                 
INSERT INTO player VALUES ('1997023','��ö��','K01','01G, CHULMIN','','1997','MF','24','',TO_DATE('19-05-1972','dd-mm-yyyy'),'1','179','76');                  
INSERT INTO player VALUES ('2001084','����ö','K01','JEON, KWANGCHEOL','','2001','MF','34','',TO_DATE('16-07-1982','dd-mm-yyyy'),'1','186','74');               
INSERT INTO player VALUES ('2002045','�����','K01','JEON, JAEWOON','','2002','MF','42','',TO_DATE('05-06-1981','dd-mm-yyyy'),'1','177','67');                  
INSERT INTO player VALUES ('1997008','������','K01','06G, JEONGSOO','','1993','MF','8','',TO_DATE('20-11-1969','dd-mm-yyyy'),'1','170','61');                  
INSERT INTO player VALUES ('2002042','���ֿ�','K01','HUNG, HUYOUNG','','2002','MF','36','',TO_DATE('03-05-1979','dd-mm-yyyy'),'1','172','65');                  
INSERT INTO player VALUES ('2002040','������','K01','CHO, WONHEE','','2002','MF','32','',TO_DATE('17-04-1983','dd-mm-yyyy'),'1','178','71');                    
INSERT INTO player VALUES ('2002041','������','K01','','','','FW','33','',TO_DATE('05-11-1979','dd-mm-yyyy'),'1','177','72');                                   
INSERT INTO player VALUES ('1997010','������','K01','KIM, HYUNSEOK','','2001','FW','16','',TO_DATE('05-05-1967','dd-mm-yyyy'),'1','178','70');                  
INSERT INTO player VALUES ('2001105','�����ڽ�','K01','03cos Antonio','','2001','FW','44','�����',TO_DATE('07-04-1977','dd-mm-yyyy'),'1','170','73');         
INSERT INTO player VALUES ('2000045','�ڱԼ�','K01','PARK, GYUSUN','','2000','FW','15','',TO_DATE('24-09-1981','dd-mm-yyyy'),'1','182','66');                   
INSERT INTO player VALUES ('2002129','�˸���','K01','Alison Barros Moraes','','','FW','14','�����',TO_DATE('30-06-1982','dd-mm-yyyy'),'1','171','60');         
INSERT INTO player VALUES ('2002038','������','K01','LEE, TAEYOO','','2002','FW','30','',TO_DATE('01-10-1979','dd-mm-yyyy'),'1','175','64');                    
INSERT INTO player VALUES ('2002030','������','K01','','','','FW','10','',TO_DATE('04-07-1979','dd-mm-yyyy'),'1','187','83');                                   
INSERT INTO player VALUES ('2002037','���μ�','K01','CHOI, INSUK','','2002','FW','27','',TO_DATE('07-08-1979','dd-mm-yyyy'),'1','181','74');                    
INSERT INTO player VALUES ('2001104','�Ŀ︵��','K01','03cos Paulo Paulrini','','2001','FW','11','�����',TO_DATE('04-03-1977','dd-mm-yyyy'),'1','174','75');  
INSERT INTO player VALUES ('2002031','������','K01','HYUN, YOUNGMIN','','2002','FW','13','',TO_DATE('25-12-1979','dd-mm-yyyy'),'1','179','73');                 
INSERT INTO player VALUES ('1900061','ȫ�α�','K01','HONG, INKI','','1998','DF','35','',TO_DATE('15-03-1979','dd-mm-yyyy'),'1','182','75');                     
INSERT INTO player VALUES ('1997114','��⵿','K04','','','','MF','6','',TO_DATE('12-01-1971','dd-mm-yyyy'),'1','171','66');                                    
INSERT INTO player VALUES ('2000005','�����','K04','','','','MF','19','',TO_DATE('10-07-1977','dd-mm-yyyy'),'1','173','64');                                   
INSERT INTO player VALUES ('2002055','������','K04','','','','MF','32','',TO_DATE('01-04-1979','dd-mm-yyyy'),'1','176','68');                                   
INSERT INTO player VALUES ('1997122','������','K04','','','','MF','14','',TO_DATE('11-07-1974','dd-mm-yyyy'),'1','185','74');                                   
INSERT INTO player VALUES ('1997137','������','K04','','','','MF','29','',TO_DATE('17-08-1974','dd-mm-yyyy'),'1','177','69');                                   
INSERT INTO player VALUES ('2002131','����Ÿ��','K04','','','','MF','77','',TO_DATE('08-01-1975','dd-mm-yyyy'),'1','180','73');                                                                                                                 
INSERT INTO player VALUES ('2002056','������','K04','','','','MF','33','',TO_DATE('26-06-1979','dd-mm-yyyy'),'1','177','73');                                   
INSERT INTO player VALUES ('2000004','����ȣ','K04','','','','MF','22','',TO_DATE('07-07-1977','dd-mm-yyyy'),'1','183','71');                                   
INSERT INTO player VALUES ('1997125','������','K04','','','','MF','17','',TO_DATE('18-02-1973','dd-mm-yyyy'),'1','173','66');                                   
INSERT INTO player VALUES ('2001103','���ȣ','K04','','','','MF','39','',TO_DATE('23-02-1983','dd-mm-yyyy'),'1','174','66');                                   
INSERT INTO player VALUES ('1998209','�ֹ���','K04','','','','MF','10','',TO_DATE('23-10-1971','dd-mm-yyyy'),'1','173','66');                                   
INSERT INTO player VALUES ('1998457','�����','K04','GWAK, JYUNGKEUN','����','1998','FW','9','',TO_DATE('10-10-1972','dd-mm-yyyy'),'1','184','81');           
INSERT INTO player VALUES ('2002120','�ٺ�','K04','Chelck Ou03 Dabo','','2002','FW','63','',TO_DATE('','dd-mm-yyyy'),'1','183','76');                         
INSERT INTO player VALUES ('1997126','�ڼ�ö','K04','PARK, SUNGCHUL','�ڹ̵��','1997','FW','28','',TO_DATE('16-03-1975','dd-mm-yyyy'),'1','190','78');         
INSERT INTO player VALUES ('1997153','��Ż��','K04','VITALIY','','2002','FW','24','',TO_DATE('04-05-1969','dd-mm-yyyy'),'1','183','74');                        
INSERT INTO player VALUES ('1999026','�Ƚ���','K04','AN, SEUNGIN','�Ȼ�','1999','FW','13','',TO_DATE('14-03-1973','dd-mm-yyyy'),'1','182','75');                
INSERT INTO player VALUES ('2001019','����ö','K04','','','','FW','8','',TO_DATE('06-01-1979','dd-mm-yyyy'),'1','184','75');                                    
INSERT INTO player VALUES ('1999027','�̼���','K04','LEE, SUNGJAE','��ġ,����','1999','FW','11','',TO_DATE('16-05-1976','dd-mm-yyyy'),'1','178','67');          
INSERT INTO player VALUES ('1997135','�̿���','K04','LEE, WONSHIK','��, �����','1996','FW','27','',TO_DATE('16-05-1973','dd-mm-yyyy'),'1','172','64');         
INSERT INTO player VALUES ('2002057','������','K04','LEE, JONGMIN','','2002','FW','34','',TO_DATE('01-08-1983','dd-mm-yyyy'),'1','184','77');                   
INSERT INTO player VALUES ('2001020','���ʼ�','K04','06G, PILSUK','���','2001','FW','18','',TO_DATE('23-07-1978','dd-mm-yyyy'),'1','190','83');               
INSERT INTO player VALUES ('2000084','������','K04','JEFF JI YOUNG','','2001','FW','16','�̱�',TO_DATE('30-10-1978','dd-mm-yyyy'),'1','184','76');              
INSERT INTO player VALUES ('1900026','�Ѷ�','K04','','','2000','FW','','�����ƴϾ�',TO_DATE('','dd-mm-yyyy'),'','184','81');                                   
INSERT INTO player VALUES ('1900027','������ƾ','K04','Selahattin','','2002','FW','11','��Ż����',TO_DATE('','dd-mm-yyyy'),'','180','75');                     
INSERT INTO player VALUES ('1900031','���溹','K08','','','1998','TM','','',TO_DATE('10-01-1937','dd-mm-yyyy'),'1','','');                                      
INSERT INTO player VALUES ('1900032','���й�','K08','','','','','','',TO_DATE('','dd-mm-yyyy'),'','','');                                                      
INSERT INTO player VALUES ('1900033','���ͼ�','K08','','','','','','',TO_DATE('','dd-mm-yyyy'),'','','');                                                      
INSERT INTO player VALUES ('1900034','����','K08','','','','','','',TO_DATE('','dd-mm-yyyy'),'','','');                                                      
INSERT INTO player VALUES ('1999045','������','K08','KWON, CHANSOO','','','GK','21','',TO_DATE('30-05-1974','dd-mm-yyyy'),'2','183','77');                      
INSERT INTO player VALUES ('2002107','����','K08','KIM, KYOUNGDOO','','','GK','41','',TO_DATE('','dd-mm-yyyy'),'1','194','76');                              
INSERT INTO player VALUES ('1997255','���ؿ�','K08','KIM, HAEWOON','','','GK','1','',TO_DATE('25-12-1973','dd-mm-yyyy'),'2','185','79');                        
INSERT INTO player VALUES ('1999101','�翵��','K08','YANG, YOUNGMIN','','','GK','31','',TO_DATE('19-07-1974','dd-mm-yyyy'),'1','190','80');                     
INSERT INTO player VALUES ('2001087','���̸���','K08','KAIMOTO KOJIRO','','','DF','3','',TO_DATE('14-10-1977','dd-mm-yyyy'),'1','182','77');                    
INSERT INTO player VALUES ('2002108','��ο�','K08','KIM, DOYOUNG','','','DF','30','',TO_DATE('07-10-1980','dd-mm-yyyy'),'1','181','75');                       
INSERT INTO player VALUES ('2002118','�����','K08','KIM, MYONGHWI','','','DF','37','',TO_DATE('08-05-1981','dd-mm-yyyy'),'1','185','76');                      
INSERT INTO player VALUES ('1997329','�迵ö','K08','KIM, YOUNGCHUL','','','DF','5','',TO_DATE('30-06-1976','dd-mm-yyyy'),'1','183','80');                      
INSERT INTO player VALUES ('1997259','������','K08','KIM, 06GJAE','','','DF','13','',TO_DATE('22-05-1974','dd-mm-yyyy'),'2','184','80');                       
INSERT INTO player VALUES ('1997186','������','K08','KIM, HYUNSOO','','','DF','15','',TO_DATE('13-03-1973','dd-mm-yyyy'),'2','186','80');                       
INSERT INTO player VALUES ('1997089','���°�','K08','NO, TAEKYOUNG','','','DF','25','',TO_DATE('22-04-1972','dd-mm-yyyy'),'1','175','68');                      
INSERT INTO player VALUES ('1999098','������','K08','MOON, SAMJIN','','','DF','2','',TO_DATE('03-03-1973','dd-mm-yyyy'),'1','173','68');                        
INSERT INTO player VALUES ('2002111','�ΰ���','K08','MIN, KYUNGIN','','','DF','12','',TO_DATE('09-05-1979','dd-mm-yyyy'),'1','177','71');                       
INSERT INTO player VALUES ('2001091','������','K08','PARK, JONGNAM','','','DF','34','',TO_DATE('17-11-1976','dd-mm-yyyy'),'1','182','76');                      
INSERT INTO player VALUES ('1997055','�����','K08','PARK, CHOONGKYUN','','','DF','20','',TO_DATE('20-06-1973','dd-mm-yyyy'),'1','184','70');                   
INSERT INTO player VALUES ('2000034','������','K08','BAE, JINSOO','','','DF','38','',TO_DATE('25-01-1976','dd-mm-yyyy'),'1','178','72');                        
INSERT INTO player VALUES ('1998471','�̿���','K08','LEE, YOUNGJIN','','','DF','23','',TO_DATE('27-03-1972','dd-mm-yyyy'),'2','180','75');                      
INSERT INTO player VALUES ('1998399','�ӱԽ�','K08','LIM, KYUSIK','','','DF','27','',TO_DATE('09-05-1975','dd-mm-yyyy'),'1','182','75');                        
INSERT INTO player VALUES ('2002106','��ġ��','K08','KWAK, CHIGOOG','','','MF','32','',TO_DATE('22-04-1979','dd-mm-yyyy'),'1','170','68');                      
INSERT INTO player VALUES ('1999095','����','K08','KIM, SANGSIK','','','MF','4','',TO_DATE('17-12-1976','dd-mm-yyyy'),'1','184','71');                        
INSERT INTO player VALUES ('2001086','�����','K08','KIM, YONGHEE','','','MF','18','',TO_DATE('15-10-1978','dd-mm-yyyy'),'1','178','70');                       
INSERT INTO player VALUES ('2002109','��Կ�','K08','','','','MF','33','',TO_DATE('29-04-1978','dd-mm-yyyy'),'1','180','83');                                   
INSERT INTO player VALUES ('2000126','�ڰ���','K08','PARK, KANGJO','','','MF','6','',TO_DATE('24-01-1980','dd-mm-yyyy'),'1','165','57');                        
INSERT INTO player VALUES ('1998171','�ڳ���','K08','PARK, NAMRYUL','','','MF','8','',TO_DATE('07-05-1970','dd-mm-yyyy'),'2','178','70');                       
INSERT INTO player VALUES ('2001088','�鿵ö','K08','BACK, YOUNGCHUL','','','MF','22','',TO_DATE('11-11-1978','dd-mm-yyyy'),'1','177','71');                    
INSERT INTO player VALUES ('1997242','���¿�','K08','SHIN, TAEYONG','','','MF','7','',TO_DATE('11-10-1970','dd-mm-yyyy'),'1','174','67');                       
INSERT INTO player VALUES ('2002117','�ø���','K08','Alcir de Oliveira fonseca','','','MF','29','�����',TO_DATE('14-11-1977','dd-mm-yyyy'),'1','175','73');    
INSERT INTO player VALUES ('2001128','�̸���','K08','Ricardo Irineu','','','MF','26','�����',TO_DATE('12-07-1977','dd-mm-yyyy'),'1','172','69');               
INSERT INTO player VALUES ('2002128','�𽺹�','K08','Jasmin Mujidza','','','MF','33','ũ�ξ�Ƽ��',TO_DATE('02-03-1974','dd-mm-yyyy'),'1','180','78');           
INSERT INTO player VALUES ('2002114','����ȣ','K08','CHUN, JAEHO','','','MF','14','',TO_DATE('08-08-1979','dd-mm-yyyy'),'1','168','64');                        
INSERT INTO player VALUES ('1998131','����ȣ','K08','CHO, JINHO','','','MF','11','',TO_DATE('02-08-1973','dd-mm-yyyy'),'1','174','68');                         
INSERT INTO player VALUES ('2002115','�ֳ���','K08','CHOI, NAKHOON','','','MF','35','',TO_DATE('28-12-1979','dd-mm-yyyy'),'1','172','62');                      
INSERT INTO player VALUES ('1997100','ȫ��ǥ','K08','HONG, DOPYO','','','MF','9','',TO_DATE('24-07-1973','dd-mm-yyyy'),'1','173','66');                         
INSERT INTO player VALUES ('2000127','�����','K08','KIM, DAEEUI','','','FW','19','',TO_DATE('30-05-1977','dd-mm-yyyy'),'1','174','70');                        
INSERT INTO player VALUES ('1999084','�����','K08','KIM, WOOJAE','','','FW','24','',TO_DATE('13-09-1976','dd-mm-yyyy'),'1','173','71');                        
INSERT INTO player VALUES ('1997192','����','K08','Drakulic sasa','','','FW','10','',TO_DATE('28-08-1972','dd-mm-yyyy'),'1','190','84');                        
INSERT INTO player VALUES ('2002112','������','K08','SIO, KWANSOO','','','FW','17','',TO_DATE('25-02-1980','dd-mm-yyyy'),'1','179','74');                       
INSERT INTO player VALUES ('2001095','�̼���','K08','LEE, SUNGWOON','','','FW','40','',TO_DATE('25-12-1978','dd-mm-yyyy'),'1','173','64');                      
INSERT INTO player VALUES ('2002113','������','K08','LEE, 06GWOON','','','FW','28','',TO_DATE('14-03-1983','dd-mm-yyyy'),'1','170','68');                      
INSERT INTO player VALUES ('2001094','�嵿��','K08','01G, DONGHYUN','','','FW','39','',TO_DATE('19-03-1982','dd-mm-yyyy'),'1','178','67');                     
INSERT INTO player VALUES ('1997250','Ȳ����','K08','HWANG, YOUNSUCK','','','FW','16','',TO_DATE('17-10-1973','dd-mm-yyyy'),'1','192','81');                    
INSERT INTO player VALUES ('1900041','��ȣ','K02','KIM, HO','','','TM','','',TO_DATE('24-11-1944','dd-mm-yyyy'),'1','','');                                     
INSERT INTO player VALUES ('1900042','�ռ���','K02','WANG, SUNJAE','','','TC','','',TO_DATE('16-03-1959','dd-mm-yyyy'),'1','','');                              
INSERT INTO player VALUES ('1900043','�ڻ�','K02','03co Antonio Alvarez Ferreira','','','TC','','�����',TO_DATE('20-07-1960','dd-mm-yyyy'),'1','','');       
INSERT INTO player VALUES ('1900044','����ȿ','K02','YOON, SUNGHYO','','','TC','','',TO_DATE('18-05-1962','dd-mm-yyyy'),'1','','');                             
INSERT INTO player VALUES ('1997067','�豤��','K02','KIM, JWANGSOO','','','GK','41','',TO_DATE('10-03-1977','dd-mm-yyyy'),'1','182','79');                      
INSERT INTO player VALUES ('1999004','��ȣ��','K02','PARK, HOJIN','','','GK','31','',TO_DATE('22-10-1976','dd-mm-yyyy'),'1','190','82');                        
INSERT INTO player VALUES ('1997203','�Ź�ö','K02','SIN, BUMCHUL','','','GK','21','',TO_DATE('27-09-1970','dd-mm-yyyy'),'2','185','85');                       
INSERT INTO player VALUES ('1997035','�̿���','K02','LEE, WOONJAE','','','GK','1','',TO_DATE('26-04-1973','dd-mm-yyyy'),'1','182','82');                       
INSERT INTO player VALUES ('1998429','�迵��','K02','KIM, YOUNGSUN','','','DF','16','',TO_DATE('03-04-1975','dd-mm-yyyy'),'1','184','81');                                                                                                      
INSERT INTO player VALUES ('2002021','������','K02','KIM, YOUJIN','','','DF','37','',TO_DATE('19-06-1983','dd-mm-yyyy'),'1','188','76');                                                                                                        
INSERT INTO player VALUES ('2001073','�ս���','K02','SON, SEUNG06','','','DF','32','',TO_DATE('16-05-1982','dd-mm-yyyy'),'1','186','72');                      
INSERT INTO player VALUES ('1997007','��ȫ��','K02','SHIN, HONGGI','','','DF','15','',TO_DATE('04-05-1968','dd-mm-yyyy'),'1','175','66');                       
INSERT INTO player VALUES ('2002027','�ȵ���','K02','AN, DONGWON','','','DF','49','',TO_DATE('27-09-1982','dd-mm-yyyy'),'1','184','78');                       
INSERT INTO player VALUES ('2002024','�̰���','K02','LEE, KANGJIN','','','DF','43','',TO_DATE('25-04-1986','dd-mm-yyyy'),'1','181','65');                     
INSERT INTO player VALUES ('1997036','�̺���','K02','LEE, BYOUNGKEUN','','','DF','3','',TO_DATE('28-04-1973','dd-mm-yyyy'),'1','175','63');                                                                                                   
INSERT INTO player VALUES ('2002026','���±�','K02','LEE, TAE-KWON','','','DF','46','',TO_DATE('14-07-1980','dd-mm-yyyy'),'1','180','75');                                                                                                      
INSERT INTO player VALUES ('2002014','������','K02','CHO, BYUNGKOOK','','','DF','2','',TO_DATE('01-07-1981','dd-mm-yyyy'),'1','183','78');                      
INSERT INTO player VALUES ('2001075','����ȯ','K02','CHO, SUNGHWAN','','','DF','5','',TO_DATE('09-04-1982','dd-mm-yyyy'),'1','183','75');                       
INSERT INTO player VALUES ('2002123','����','K02','Gabriel Popescu','','','MF','10','�縶�Ͼ�',TO_DATE('25-12-1973','dd-mm-yyyy'),'1','177','74');              
INSERT INTO player VALUES ('2000089','������','K02','','','','MF','26','',TO_DATE('02-02-1977','dd-mm-yyyy'),'1','174','65');                                                                                                                   
INSERT INTO player VALUES ('1997051','������','K02','KO, JONGSU','','','MF','22','',TO_DATE('30-10-1978','dd-mm-yyyy'),'1','176','70');                         
INSERT INTO player VALUES ('2002015','��â��','K02','KO, CHANGHYUN','','','MF','8','',TO_DATE('15-09-1983','dd-mm-yyyy'),'1','170','64');                       
INSERT INTO player VALUES ('1999089','����','K02','KIM, KIBUM','','','MF','28','',TO_DATE('14-08-1976','dd-mm-yyyy'),'1','173','65');                         
INSERT INTO player VALUES ('1999083','�赿��','K02','KIM, DONGHYUN','','','MF','25','',TO_DATE('17-08-1980','dd-mm-yyyy'),'1','175','72');                      
INSERT INTO player VALUES ('2001071','�����','K02','KIM, DOOHYUN','','','MF','4','',TO_DATE('14-07-1982','dd-mm-yyyy'),'1','175','67');                        
INSERT INTO player VALUES ('2002025','����','K02','KIM, 06','','','MF','44','',TO_DATE('09-12-1986','dd-mm-yyyy'),'1','170','65');                             
INSERT INTO player VALUES ('1997040','������','K02','KIM, JINWOO','','','DF','7','',TO_DATE('09-10-1975','dd-mm-yyyy'),'1','179','72');                         
INSERT INTO player VALUES ('1997069','���Ͻ�','K02','Laktio11 Denis','','','FW','11','���þ�',TO_DATE('04-09-1977','dd-mm-yyyy'),'1','176','71');              
INSERT INTO player VALUES ('1997274','������','K02','SEO, 06GWON','','','FW','14','',TO_DATE('17-12-1970','dd-mm-yyyy'),'1','173','66');                       
INSERT INTO player VALUES ('2002016','�մ�ȣ','K02','SON, DAEHO','','','DF','17','',TO_DATE('11-09-1981','dd-mm-yyyy'),'1','186','79');                         
INSERT INTO player VALUES ('2001070','������','K02','OH, GUCHAN','','','MF','24','',TO_DATE('28-08-1982','dd-mm-yyyy'),'1','178','71');                         
INSERT INTO player VALUES ('2002135','������','K02','','','','MF','45','',TO_DATE('31-03-1983','dd-mm-yyyy'),'1','176','70');                                   
INSERT INTO player VALUES ('1999131','�̵���','K02','LEE, DONGWOOK','','','MF','40','',TO_DATE('10-04-1976','dd-mm-yyyy'),'1','176','68');                      
 
----------------------

DROP TABLE EMP;
DROP TABLE DEPT;
DROP TABLE BONUS;
DROP TABLE SALGRADE;
DROP TABLE LOCATIONS;

CREATE TABLE EMP
       (EMPNO NUMBER(4) NOT NULL,
        ENAME VARCHAR2(10),
        JOB VARCHAR2(9),
        MGR NUMBER(4),
        HIREDATE DATE,
        SAL NUMBER(7, 2),
        COMM NUMBER(7, 2),
        DEPTNO NUMBER(2));

INSERT INTO EMP VALUES
        (7369, 'SMITH',  'CLERK',     7902,
        TO_DATE('17-12-1980', 'DD-Mm-YYYY'),  800, NULL, 20);
INSERT INTO EMP VALUES
        (7499, 'ALLEN',  'SALESMAN',  7698,
        TO_DATE('20-02-1981', 'DD-mm-YYYY'), 1600,  300, 30);
INSERT INTO EMP VALUES
        (7521, 'WARD',   'SALESMAN',  7698,
        TO_DATE('22-02-1981', 'DD-Mm-YYYY'), 1250,  500, 30);
INSERT INTO EMP VALUES
        (7566, 'JONES',  'MANAGER',   7839,
        TO_DATE('2-04-1981', 'DD-Mm-YYYY'),  2975, NULL, 20);
INSERT INTO EMP VALUES
        (7654, 'MARTIN', 'SALESMAN',  7698,
        TO_DATE('28-09-1981', 'DD-Mm-YYYY'), 1250, 1400, 30);
INSERT INTO EMP VALUES
        (7698, 'BLAKE',  'MANAGER',   7839,
        TO_DATE('1-05-1981', 'DD-Mm-YYYY'),  2850, NULL, 30);
INSERT INTO EMP VALUES
        (7782, 'CLARK',  'MANAGER',   7839,
        TO_DATE('9-01-1981', 'DD-Mm-YYYY'),  2450, NULL, 10);
INSERT INTO EMP VALUES
        (7788, 'SCOTT',  'ANALYST',   7566,
        TO_DATE('09-12-1982', 'DD-Mm-YYYY'), 3000, NULL, 20);
INSERT INTO EMP VALUES
        (7839, 'KING',   'PRESIDENT', NULL,
        TO_DATE('17-11-1981', 'DD-Mm-YYYY'), 5000, NULL, 10);
INSERT INTO EMP VALUES
        (7844, 'TURNER', 'SALESMAN',  7698,
        TO_DATE('8-09-1981', 'DD-Mm-YYYY'),  1500,    0, 30);
INSERT INTO EMP VALUES
        (7876, 'ADAMS',  'CLERK',     7788,
        TO_DATE('12-01-1983', 'DD-Mm-YYYY'), 1100, NULL, 20);
INSERT INTO EMP VALUES
        (7900, 'JAMES',  'CLERK',     7698,
        TO_DATE('3-12-1981', 'DD-Mm-YYYY'),   950, NULL, 30);
INSERT INTO EMP VALUES
        (7902, 'FORD',   'ANALYST',   7566,
        TO_DATE('3-12-1981', 'DD-Mm-YYYY'),  3000, NULL, 20);
INSERT INTO EMP VALUES
        (7934, 'MILLER', 'CLERK',     7782,
        TO_DATE('23-01-1982', 'DD-Mm-YYYY'), 1300, NULL, 10);

CREATE TABLE DEPT
       (DEPTNO NUMBER(2),
        DNAME VARCHAR2(14),
        LOC_code VARCHAR2(2) );

INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'A1');
INSERT INTO DEPT VALUES (20, 'RESEARCH',   'B1');
INSERT INTO DEPT VALUES (30, 'SALES',      'C1');
INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'A1');
INSERT INTO DEPT VALUES (50, 'INSA', null);

create table locations
(loc_code  varchar2(2),
 city	   varchar2(12) );
 
 insert into locations values ('A1','SEOUL');
 insert into locations values ('B1','DALLAS');
 insert into locations values ('C1','CHICAGO');
 insert into locations values ('D1','BOSTON');
 

CREATE TABLE BONUS
        (ENAME VARCHAR2(10),
         JOB   VARCHAR2(9),
         SAL   NUMBER,
         COMM  NUMBER);

CREATE TABLE SALGRADE
        (GRADE NUMBER,
         LOSAL NUMBER,
         HISAL NUMBER);

INSERT INTO SALGRADE VALUES (1,  700, 1200);
INSERT INTO SALGRADE VALUES (2, 1201, 1400);
INSERT INTO SALGRADE VALUES (3, 1401, 2000);
INSERT INTO SALGRADE VALUES (4, 2001, 3000);
INSERT INTO SALGRADE VALUES (5, 3001, 9999);



COMMIT;

