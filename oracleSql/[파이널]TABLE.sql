----- 시퀀스 삭제 -----
--근아--------------------------------------------------------------------
DROP SEQUENCE SEQ_RESERV_MEETING;
DROP SEQUENCE SEQ_MEETING_ROOM;
DROP SEQUENCE SEQ_RESERV_VEHICLE;
DROP SEQUENCE SEQ_VEHICLE_TYPE;
DROP SEQUENCE SEQ_VEHICLE;
DROP SEQUENCE SEQ_APPROVAL_STATUS;
DROP SEQUENCE SEQ_NOTICE_BOARD;
DROP SEQUENCE SEQ_BOARD;
DROP SEQUENCE SEQ_BOARD_COMMENT;
DROP SEQUENCE SEQ_BOARD_CATEGORY;
DROP SEQUENCE SEQ_LIKE_COMMENT_TYPE;
DROP SEQUENCE SEQ_WISHLIST_BOARD;
DROP SEQUENCE SEQ_CHATTING_ROOM;
DROP SEQUENCE SEQ_CHATTING_MEMBER;
DROP SEQUENCE SEQ_MESSAGE;

--수인--------------------------------------------------------------------
DROP SEQUENCE SEQ_EMPLOYEE;
DROP SEQUENCE SEQ_POSITION;
DROP SEQUENCE SEQ_DEPARTMENT;
DROP SEQUENCE SEQ_CALENDAR;
DROP SEQUENCE SEQ_OPEN_RANGE;
DROP SEQUENCE SEQ_CALENDAR_MEMBER;
DROP SEQUENCE SEQ_NOTICE_TEMPLATE;
DROP SEQUENCE SEQ_ADMIN;
DROP SEQUENCE SEQ_ADMIN_AUTHORITY;
DROP SEQUENCE SEQ_ADMIN_PAGE_MENU_AUTHORITY;
DROP SEQUENCE SEQ_ADMIN_PAGE_MENU;

--예린--------------------------------------------------------------------
DROP SEQUENCE SEQ_TODO;
DROP SEQUENCE SEQ_SURVEY;
DROP SEQUENCE SEQ_SURVEY_OPEN_RANGE;
DROP SEQUENCE SEQ_SURVEY_CONTENT;
DROP SEQUENCE SEQ_SURVEY_RESPONSE;

--지수--------------------------------------------------------------------
DROP SEQUENCE SEQ_ATTEND;
DROP SEQUENCE SEQ_MESSENGER;
DROP SEQUENCE SEQ_MESSENGER_STATUS;
DROP SEQUENCE SEQ_MESSENBOX_TYPE;
DROP SEQUENCE SEQ_MESSEN_FILE;
DROP SEQUENCE SEQ_MAIL;
DROP SEQUENCE SEQ_MAILBOX_TYPE;
DROP SEQUENCE SEQ_MAIL_FILE;
DROP SEQUENCE SEQ_ALARM;


----- 테이블 삭제 -----
--근아--------------------------------------------------------------------
DROP TABLE RESERV_MEETING CASCADE CONSTRAINTS;
DROP TABLE MEETING_ROOM CASCADE CONSTRAINTS;
DROP TABLE RESERV_VEHICLE CASCADE CONSTRAINTS;
DROP TABLE VEHICLE_TYPE CASCADE CONSTRAINTS;
DROP TABLE VEHICLE CASCADE CONSTRAINTS;
DROP TABLE APPROVAL_STATUS CASCADE CONSTRAINTS;
DROP TABLE NOTICE_BOARD CASCADE CONSTRAINTS;
DROP TABLE BOARD CASCADE CONSTRAINTS;
DROP TABLE BOARD_COMMENT CASCADE CONSTRAINTS;
DROP TABLE BOARD_CATEGORY CASCADE CONSTRAINTS;
DROP TABLE LIKE_COMMENT_TYPE CASCADE CONSTRAINTS;
DROP TABLE WISHLIST_BOARD CASCADE CONSTRAINTS;
DROP TABLE CHATTING_ROOM CASCADE CONSTRAINTS;
DROP TABLE CHATTING_MEMBER CASCADE CONSTRAINTS;
DROP TABLE MESSAGE CASCADE CONSTRAINTS;

--수인--------------------------------------------------------------------
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
DROP TABLE POSITION CASCADE CONSTRAINTS;
DROP TABLE DEPARTMENT CASCADE CONSTRAINTS;
DROP TABLE CALENDAR CASCADE CONSTRAINTS;
DROP TABLE OPEN_RANGE CASCADE CONSTRAINTS;
DROP TABLE CALENDAR_MEMBER CASCADE CONSTRAINTS;
DROP TABLE NOTICE_TEMPLATE CASCADE CONSTRAINTS;
DROP TABLE ADMIN CASCADE CONSTRAINTS;
DROP TABLE ADMIN_AUTHORITY CASCADE CONSTRAINTS;
DROP TABLE ADMIN_PAGE_MENU_AUTHORITY CASCADE CONSTRAINTS;
DROP TABLE ADMIN_PAGE_MENU CASCADE CONSTRAINTS;

--예린--------------------------------------------------------------------
DROP TABLE TODO CASCADE CONSTRAINTS;
DROP TABLE TODO_MANAGER CASCADE CONSTRAINTS;
DROP TABLE SURVEY CASCADE CONSTRAINTS;
DROP TABLE SURVEY_OPEN_RANGE CASCADE CONSTRAINTS;
DROP TABLE SURVEY_CONTENT CASCADE CONSTRAINTS;
DROP TABLE SURVEY_RESPONSE CASCADE CONSTRAINTS;

--지수--------------------------------------------------------------------
DROP TABLE ATTEND CASCADE CONSTRAINTS;
DROP TABLE MESSENGER CASCADE CONSTRAINTS;
DROP TABLE MESSENGER_STATUS CASCADE CONSTRAINTS;
DROP TABLE MESSENBOX_TYPE CASCADE CONSTRAINTS;
DROP TABLE MESSEN_FILE CASCADE CONSTRAINTS;
DROP TABLE MAIL CASCADE CONSTRAINTS;
DROP TABLE MAILBOX_TYPE CASCADE CONSTRAINTS;
DROP TABLE MAIL_FILE CASCADE CONSTRAINTS;
DROP TABLE ALARM CASCADE CONSTRAINTS;


----- 시퀀스 생성 -----
--근아--------------------------------------------------------------------
CREATE SEQUENCE SEQ_RESERV_MEETING NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_MEETING_ROOM NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_RESERV_VEHICLE NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_VEHICLE_TYPE NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_VEHICLE NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_APPROVAL_STATUS NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_NOTICE_BOARD NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_BOARD NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_BOARD_COMMENT NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_BOARD_CATEGORY NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_LIKE_COMMENT_TYPE NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_WISHLIST_BOARD NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_CHATTING_ROOM NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_CHATTING_MEMBER NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_MESSAGE NOCACHE NOCYCLE;

--수인--------------------------------------------------------------------
CREATE SEQUENCE SEQ_EMPLOYEE NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_POSITION NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_DEPARTMENT NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_CALENDAR NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_OPEN_RANGE NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_CALENDAR_MEMBER NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_NOTICE_TEMPLATE NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_ADMIN NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_ADMIN_AUTHORITY NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_ADMIN_PAGE_MENU_AUTHORITY NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_ADMIN_PAGE_MENU NOCACHE NOCYCLE;

--예린--------------------------------------------------------------------
CREATE SEQUENCE SEQ_TODO NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_SURVEY NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_SURVEY_OPEN_RANGE NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_SURVEY_CONTENT NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_SURVEY_RESPONSE NOCACHE NOCYCLE;

--지수--------------------------------------------------------------------
CREATE SEQUENCE SEQ_ATTEND NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_MESSENGER NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_MESSENGER_STATUS NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_MESSENBOX_TYPE NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_MESSEN_FILE NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_MAIL NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_MAILBOX_TYPE NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_MAIL_FILE NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_ALARM NOCACHE NOCYCLE;


----- 테이블 생성 -----
--근아--------------------------------------------------------------------
CREATE TABLE RESERV_MEETING (
    MET_RSV_NO          NUMBER          PRIMARY KEY
    ,MET_ROOM_NO        NUMBER          NOT NULL
    ,EMP_NO             NUMBER          NOT NULL
    ,RSV_DATE           TIMESTAMP       NOT NULL
    ,START_DATE         TIMESTAMP       NOT NULL
    ,END_DATE           TIMESTAMP       NOT NULL
);

CREATE TABLE MEETING_ROOM (
    MET_ROOM_NO         NUMBER          PRIMARY KEY
    ,NAME               VARCHAR2(50)    NOT NULL
    ,FLOOR              NUMBER          NOT NULL
);

CREATE TABLE RESERV_VEHICLE (
    VHCL_RSV_NO             NUMBER          PRIMARY KEY
    ,VHCL_NO                NUMBER          NOT NULL
    ,EMP_NO                 NUMBER          NOT NULL
    ,APPROVAL_NO            NUMBER          DEFAULT 1 NOT NULL
    ,CANCEL_RESERVATION_YN  CHAR(1)         DEFAULT 'N' CHECK(CANCEL_RESERVATION_YN IN ('Y', 'N')) 
    ,LOAN_DATE              DATE       NOT NULL
    ,RETURN_DATE            DATE       NOT NULL
    ,REASON                 VARCHAR2(1000)  NOT NULL
);

CREATE TABLE VEHICLE_TYPE (
    VHCL_TYPE_NO            NUMBER          PRIMARY KEY
    ,NAME                   VARCHAR2(100)   NOT NULL 
);

CREATE TABLE VEHICLE (
    VHCL_NO                 NUMBER          PRIMARY KEY
    ,VHCL_TYPE_NO           NUMBER          NOT NULL
    ,VHCL_NUMBER            NUMBER          NOT NULL 
);

CREATE TABLE APPROVAL_STATUS (
    APPROVAL_NO             NUMBER          PRIMARY KEY
    ,APPROVAL_STATUS        VARCHAR2(255)   NULL 
);

CREATE TABLE NOTICE_BOARD (
    NOTICE_NO               NUMBER          PRIMARY KEY
    ,NO                     NUMBER          NOT NULL
    ,TITLE                  VARCHAR2(1000)  NOT NULL
    ,CONTENT                VARCHAR2(4000)  NOT NULL
    ,VIEW_COUNT             NUMBER          NULL
    ,CRTN_DATE              TIMESTAMP       NOT NULL
    ,MDFD_DATE              TIMESTAMP       NULL
    ,DEL_YN                 CHAR(1)         DEFAULT 'N' CHECK(DEL_YN IN ('Y', 'N'))
    ,IMG                    VARCHAR2(4000)  NULL
);

CREATE TABLE BOARD (
    BOARD_NO                NUMBER          PRIMARY KEY
    ,EMP_NO                 NUMBER          NOT NULL
    ,TITLE                  VARCHAR2(1000)  NOT NULL
    ,CONTENT                VARCHAR2(4000)  NOT NULL
    ,VIEW_COUNT             NUMBER          NULL
    ,CRTN_DATE              TIMESTAMP       NOT NULL
    ,MDFD_DATE              TIMESTAMP       NULL
    ,DEL_YN                 CHAR(1)         DEFAULT 'N' CHECK(DEL_YN IN ('Y', 'N')) 
    ,FILE_NAME              VARCHAR2(4000)  NULL
    ,IMG                    VARCHAR2(4000)  NULL

);

CREATE TABLE BOARD_COMMENT (
    COMT_NO                 NUMBER          PRIMARY KEY
    ,BOARD_NO               NUMBER          NOT NULL
    ,EMP_NO                 NUMBER          NOT NULL
    ,BOARD_COMMENT          VARCHAR2(3000)  NOT NULL
    ,COMT_DATE              TIMESTAMP       NOT NULL
    ,DEL_YN                 CHAR(1)         DEFAULT 'N' CHECK(DEL_YN IN ('Y', 'N'))
);

CREATE TABLE LIKE_COMMENT_TYPE (
    LIKE_COMT_NO            NUMBER          PRIMARY KEY
    ,BOARD_NO               NUMBER          NOT NULL
    ,LIKE_CNT               NUMBER          NULL
);

CREATE TABLE WISHLIST_BOARD (
    BOARD_WISH_NO           NUMBER          NOT NULL        
    ,NOTICE_NO              NUMBER          NOT NULL
    ,EMP_NO                 NUMBER          NOT NULL
);

CREATE TABLE CHATTING_ROOM (
    CHAT_ROM_NO             NUMBER          PRIMARY KEY
    ,NAME                   VARCHAR2(100)   NOT NULL
    ,DEL_YN                 CHAR(1)         DEFAULT 'N' CHECK(DEL_YN IN ('Y', 'N'))
);

CREATE TABLE CHATTING_MEMBER (
    CHAT_MEM_NO             NUMBER          PRIMARY KEY
    ,CHAT_ROM_NO            NUMBER          NOT NULL
    ,RECEIVER               NUMBER          NOT NULL 
    ,SENDER                 NUMBER          NOT NULL 
);

CREATE TABLE MESSAGE (
    MSG_NO                  NUMBER          PRIMARY KEY
    ,CHAT_MEM_NO            NUMBER          NOT NULL
    ,CONTENT                VARCHAR2(100)   NOT NULL
    ,TRANSFER_TIME          TIMESTAMP       NOT NULL
    ,DEL_YN                 CHAR(1)         DEFAULT 'N' CHECK(DEL_YN IN ('Y', 'N'))
    ,READ_CHK               CHAR(1)         DEFAULT 'N' CHECK(READ_CHK IN ('Y', 'N'))
);

--수인--------------------------------------------------------------------
CREATE TABLE EMPLOYEE (
    NO                      NUMBER          PRIMARY KEY 
    ,EMAIL                  VARCHAR2(280)   NOT NULL 
    ,NAME                   VARCHAR2(30)    NOT NULL 
    ,ID                     VARCHAR2(30)    UNIQUE
    ,PWD                    VARCHAR2(100)
    ,PROFILE                VARCHAR2(3000)
    ,PHONE                  CHAR(11)
    ,HIRE_DATE              DATE            DEFAULT SYSDATE
    ,RETIRE_YN                 CHAR(1)         DEFAULT 'N' CHECK(RETIRE_YN IN ('Y', 'N'))
    ,RETIRE_DATE               DATE
    ,LOGIN_FAIL_NUM         NUMBER          DEFAULT 0
    ,LOCK_YN                CHAR(1)         DEFAULT 'N' CHECK(LOCK_YN IN ('Y', 'N'))
    ,DEPT_NO                NUMBER
    ,POSITION_NO            NUMBER          NOT NULL
);

CREATE TABLE POSITION (
    NO                      NUMBER          PRIMARY KEY
    ,NAME                   VARCHAR2(30)    NOT NULL 
);



CREATE TABLE DEPARTMENT (
    NO                      NUMBER           PRIMARY KEY
    ,NAME                   VARCHAR2(60)     NOT NULL 
);


CREATE TABLE CALENDAR (
    NO                      NUMBER          PRIMARY KEY
    ,START_DATE             DATE            NOT NULL
    ,END_DATE               DATE            NOT NULL
    ,TITLE                  VARCHAR2(100)   NOT NULL
    ,CONTENT                VARCHAR2(3000)  
    ,ADDRESS                VARCHAR2(1000)  
    ,DEL_YN                 CHAR(1)         DEFAULT 'N' CHECK(DEL_YN IN ('Y', 'N'))
    ,INSERT_DATE            DATE            DEFAULT SYSDATE
    ,UPDATE_DATE            DATE           
    ,EMP_NO         	  NUMBER          
    ,OPEN_RANGE_NO          NUMBER          NOT NULL
    ,FRONT_COLOR		VARCHAR2(100)
   ,ADMIN_NO		NUMBER
);

CREATE TABLE OPEN_RANGE (
    NO                      NUMBER          PRIMARY KEY
    ,NAME                   VARCHAR2(30)    NOT NULL 
);

CREATE TABLE CALENDAR_MEMBER (
     CALENDAR_NO            NUMBER          
    ,EMP_NO                 NUMBER          
    ,PRIMARY KEY(CALENDAR_NO,EMP_NO)
);

-- 관리자
CREATE TABLE ADMIN (
    NO                      NUMBER          PRIMARY KEY,
    ID                      VARCHAR2(30)    UNIQUE      NOT NULL,
    PWD                     VARCHAR2(100)   NOT NULL,
    ADMIN_AUTHORITY_NO      NUMBER          NOT NULL
);

-- 관리자 권한
CREATE TABLE ADMIN_AUTHORITY (
    NO              NUMBER          PRIMARY KEY,
    NAME            VARCHAR2(60)    NOT NULL
);


-- 관리자 페이지 메뉴 권한
CREATE TABLE ADMIN_PAGE_MENU_AUTHORITY (
    ADMIN_PAGE_MENU_NO               NUMBER ,
    ADMIN_AUTHORITY_NO               NUMBER ,
    SELECT_YN                        CHAR(1)      DEFAULT 'N' CHECK (SELECT_YN IN ('Y', 'N')),
    INSERT_YN                        CHAR(1)      DEFAULT 'N' CHECK (INSERT_YN IN ('Y', 'N')),
    MODIFY_YN                        CHAR(1)      DEFAULT 'N' CHECK (MODIFY_YN IN ('Y', 'N')),
    REMOVE_YN                        CHAR(1)      DEFAULT 'N' CHECK (REMOVE_YN IN ('Y', 'N')),
    PRIMARY KEY(ADMIN_PAGE_MENU_NO,ADMIN_AUTHORITY_NO)
);


-- 관리자 페이지 메뉴
CREATE TABLE ADMIN_PAGE_MENU (
    NO              NUMBER          PRIMARY KEY,
    NAME            VARCHAR2(100)   NOT NULL,
    URL             VARCHAR2(300)
);


CREATE TABLE NOTICE_TEMPLATE (
    NO                      NUMBER          PRIMARY KEY
    ,NAME                   VARCHAR2(300)   NOT NULL
    ,CONTENT                VARCHAR2(3000)  NOT NULL
);


--예린--------------------------------------------------------------------
CREATE TABLE TODO (
    TODO_NO                 NUMBER          PRIMARY KEY
    ,TODO_EMP_NO            NUMBER          NOT NULL
    ,TITLE                  VARCHAR2(1000)  NULL
    ,CONTENT                VARCHAR2(4000)  NULL
    ,DEL_YN                 CHAR(1)         DEFAULT 'N' CHECK(DEL_YN IN ('Y', 'N'))
    ,COMPLETED_YN           CHAR(1)         DEFAULT 'N' CHECK(COMPLETED_YN IN ('Y', 'N'))
    ,CREATE_DATE            TIMESTAMP       DEFAULT SYSDATE
    ,START_DATE             TIMESTAMP       NULL
    ,END_DATE               DATE            NULL
);

CREATE TABLE TODO_MANAGER (
              
   	 TODO_NO_MAN		NUMBER 
	,TODO_MANAGER_NO	NUMBER      
   	 ,DEL_YN                 	CHAR(1)         DEFAULT 'N' CHECK(DEL_YN IN ('Y', 'N'))
    	,PRIMARY KEY(TODO_MANAGER_NO, TODO_NO_MAN)
);

--ToDo 트리거
CREATE OR REPLACE TRIGGER update_todo_manager_del_yn
AFTER UPDATE OF DEL_YN ON TODO
FOR EACH ROW
BEGIN
    IF :NEW.DEL_YN = 'Y' AND :NEW.TODO_NO = 1 THEN
        UPDATE TODO_MANAGER
        SET DEL_YN = 'Y'
        WHERE TODO_NO_MAN = :NEW.TODO_NO;
    END IF;
END;
/

---설문 테이블 생성
CREATE TABLE SURVEY (
    SURVEY_NO               NUMBER          PRIMARY KEY
    ,SURVEY_EMP_NO          NUMBER          NOT NULL
    ,TITLE                  VARCHAR2(1000)  NULL
    ,CONTENT                VARCHAR2(4000)  NULL
    ,CREATE_DATE            TIMESTAMP       NULL
    ,START_DATE             TIMESTAMP       NULL
    ,END_DATE               TIMESTAMP       NULL
    ,MODIFY_DATE            TIMESTAMP       NULL
    ,DEL_YN                 CHAR(1)         DEFAULT 'N' CHECK(DEL_YN IN ('Y', 'N'))
);

CREATE TABLE SURVEY_OPEN_RANGE (
    SURVEY_RANGE_NO         NUMBER          PRIMARY KEY
    ,SURVEY_NO              NUMBER          NOT NULL
    ,SURVEY_DEPT_NO         NUMBER          NOT NULL
);

CREATE TABLE SURVEY_CONTENT (
    SURVEY_CONTENT_NO       NUMBER          PRIMARY KEY
    ,SURVEY_NO              NUMBER          NOT NULL
    ,SURVEY_EXPLN           VARCHAR2(4000)  NULL
);

CREATE TABLE SURVEY_RESPONSE (
    RESPONSE_NO             NUMBER          PRIMARY KEY
    ,ANSWER_EMP_NO          NUMBER          NOT NULL
    ,SURVEY_RESPONSE_NO     NUMBER          NOT NULL
    ,RESPONSE_CONTENT       VARCHAR2(4000)  NULL
);


--지수--------------------------------------------------------------------
CREATE TABLE ATTEND (
    ATTEND_NO             NUMBER          PRIMARY KEY
    ,EMP_NO                 NUMBER          NOT NULL
    ,START_TIME            TIMESTAMP       NOT NULL 
    ,END_TIME               TIMESTAMP       NULL 
    ,DEL_YN                  CHAR(1)         DEFAULT 'N' CHECK(DEL_YN IN ('Y', 'N'))
);

CREATE TABLE MESSENGER (
    MESSEN_NO               		NUMBER          	PRIMARY KEY
    ,SENDER_EMP_NO        		NUMBER          	NOT NULL 
    ,RECEIVER_EMP_NO        		NUMBER          	NOT NULL 
    ,MESSENBOX_TYPE_NO      	NUMBER          	NULL
    ,TITLE                  		VARCHAR2(100)   	NOT NULL
    ,CONTENT                		VARCHAR2(1000)  NOT NULL
    ,SEND_DATE              		TIMESTAMP       	NOT NULL 
    ,READ_YN                		CHAR(1)         	DEFAULT 'N' CHECK(READ_YN IN ('Y', 'N')) 
    ,IS_SAVE                		CHAR(1)         	DEFAULT 'N' CHECK(IS_SAVE IN ('Y', 'N'))  
    ,UPDATE_DATE            		TIMESTAMP       	NULL 
    ,IMPORTANT_YN           		CHAR(1)         	DEFAULT 'N' CHECK(IMPORTANT_YN IN ('Y', 'N'))
    ,DEL_YN                 		CHAR(1)         	DEFAULT 'N' CHECK(DEL_YN IN ('Y', 'N'))
);

CREATE TABLE MESSENGER_STATUS (
    STATUS_NO                   NUMBER                  PRIMARY KEY
    ,MESSEN_NO                  NUMBER                  NOT NULL
    ,EMP_NO                     NUMBER                  NOT NULL
    ,IS_IMPORTANT               CHAR(1)                 DEFAULT 'N'
    ,IS_TRASH                   CHAR(1)                 DEFAULT 'N'
);

CREATE TABLE MESSENBOX_TYPE (
    MESSENBOX_TYPE_NO       NUMBER          PRIMARY KEY
    ,RECEIVED_MESSENBOX     VARCHAR2(10)    NULL
    ,SENT_MESSENBOX         VARCHAR2(10)    NULL
    ,IMP_MESSENBOX          VARCHAR2(10)    NULL
    ,TRASH_MESSENBOX        VARCHAR2(10)    NULL
);

CREATE TABLE MESSEN_FILE (
    MESSEN_FILE_NO          NUMBER          PRIMARY KEY
    ,MESSEN_NO              NUMBER          NOT NULL 
    ,MESSEN_FILE_NAME       VARCHAR2(100)   NULL
    ,MESSEN_FILE_PATH       VARCHAR2(1000)  NULL
);

CREATE TABLE MAIL (
    MAIL_NO                 NUMBER          PRIMARY KEY
    ,SENDER_EMP_NO          NUMBER          NOT NULL 
    ,RECEIVER_EMP_NO        NUMBER          NOT NULL 
    ,MAIL_TYPE_NO           NUMBER          NOT NULL
    ,TITLE                  VARCHAR2(100)   NULL
    ,CONTENT                VARCHAR2(1000)  NULL
    ,SEND_DATE              TIMESTAMP       NULL 
    ,READ_YN                CHAR(1)         DEFAULT 'N' CHECK(READ_YN IN ('Y', 'N')) 
    ,DEL_YN                 CHAR(1)         DEFAULT 'N' CHECK(DEL_YN IN ('Y', 'N'))
);

CREATE TABLE MAILBOX_TYPE (
    MAILBOX_TYPE_NO         NUMBER          PRIMARY KEY
    ,RECEIVED_MAILBOX       VARCHAR2(10)    NULL
    ,SENT_MAILBOX           VARCHAR2(10)    NULL
    ,IMP_MAILBOX            VARCHAR2(10)    NULL
    ,TRASH_MAILBOX          VARCHAR2(10)    NULL
);

CREATE TABLE MAIL_FILE (
    MAIL_FILE_NO            NUMBER          PRIMARY KEY
    ,MAIL_NO                NUMBER          NOT NULL 
    ,MAIL_FILE_NAME         VARCHAR2(100)   NULL
    ,MAIL_FILE_PATH         VARCHAR2(1000)  NULL
);

CREATE TABLE ALARM (
    ALARM_NO               NUMBER           PRIMARY KEY
    ,EMP_NO                NUMBER           NOT NULL
    ,MESSAGE               VARCHAR2(4000)   NOT NULL
    ,IS_READ               CHAR(1)          DEFAULT 'N' CHECK(IS_READ IN ('Y', 'N'))
    ,CREATE_DATE           TIMESTAMP        DEFAULT CURRENT_TIMESTAMP
);

-----------------------------------------------------------------

----- 외래키 추가 -----
--근아---------------------------------------------------------------
ALTER TABLE RESERV_MEETING
ADD CONSTRAINT FK_MEETING_ROOM
FOREIGN KEY (MET_ROOM_NO)
REFERENCES MEETING_ROOM(MET_ROOM_NO);

ALTER TABLE RESERV_MEETING
ADD CONSTRAINT FK_EMPLOYEE_NAME1
FOREIGN KEY (EMP_NO)
REFERENCES EMPLOYEE(NO);

ALTER TABLE VEHICLE
ADD CONSTRAINT FK_VEHICLE_TYPE
FOREIGN KEY (VHCL_TYPE_NO)
REFERENCES VEHICLE_TYPE(VHCL_TYPE_NO);

ALTER TABLE RESERV_VEHICLE
ADD CONSTRAINT FK_VEHICLE
FOREIGN KEY (VHCL_NO)
REFERENCES VEHICLE(VHCL_NO);

ALTER TABLE RESERV_VEHICLE
ADD CONSTRAINT FK_EMPLOYEE_NAME2
FOREIGN KEY (EMP_NO)
REFERENCES EMPLOYEE(NO);

ALTER TABLE RESERV_VEHICLE
ADD CONSTRAINT FK_APPROVAL_STATUS
FOREIGN KEY (APPROVAL_NO)
REFERENCES APPROVAL_STATUS(APPROVAL_NO);

ALTER TABLE NOTICE_BOARD
ADD CONSTRAINT FK_ADMIN
FOREIGN KEY (NO)
REFERENCES ADMIN(NO);

ALTER TABLE BOARD_COMMENT
ADD CONSTRAINT FK_BOARD1
FOREIGN KEY (BOARD_NO)
REFERENCES BOARD(BOARD_NO);

ALTER TABLE BOARD_COMMENT
ADD CONSTRAINT FK_EMPLOYEE_NAME3
FOREIGN KEY (EMP_NO)
REFERENCES EMPLOYEE(NO);

ALTER TABLE LIKE_COMMENT_TYPE
ADD CONSTRAINT FK_BOARD2
FOREIGN KEY (BOARD_NO)
REFERENCES BOARD(BOARD_NO);

ALTER TABLE BOARD
ADD CONSTRAINT FK_EMPLOYEE_NAME4
FOREIGN KEY (EMP_NO)
REFERENCES EMPLOYEE(NO);

ALTER TABLE WISHLIST_BOARD
ADD CONSTRAINT FK_BOARD3
FOREIGN KEY (BOARD_WISH_NO)
REFERENCES BOARD(BOARD_NO);

ALTER TABLE WISHLIST_BOARD
ADD CONSTRAINT FK_NOTICE_BOARD
FOREIGN KEY (NOTICE_NO)
REFERENCES NOTICE_BOARD(NOTICE_NO);

ALTER TABLE WISHLIST_BOARD
ADD CONSTRAINT FK_EMPLOYEE_NAME5
FOREIGN KEY (EMP_NO)
REFERENCES EMPLOYEE(NO);

ALTER TABLE MESSAGE
ADD CONSTRAINT FK_CHATTING_MEMBER
FOREIGN KEY (CHAT_MEM_NO)
REFERENCES CHATTING_MEMBER(CHAT_MEM_NO);

ALTER TABLE CHATTING_MEMBER
ADD CONSTRAINT FK_CHATTING_ROOM
FOREIGN KEY (CHAT_ROM_NO)
REFERENCES CHATTING_ROOM(CHAT_ROM_NO);

ALTER TABLE CHATTING_MEMBER
ADD CONSTRAINT FK_EMPLOYEE_NAME6
FOREIGN KEY (RECEIVER)
REFERENCES EMPLOYEE(NO);

ALTER TABLE CHATTING_MEMBER
ADD CONSTRAINT FK_EMPLOYEE_NAME7
FOREIGN KEY (SENDER)
REFERENCES EMPLOYEE(NO);

--수인---------------------------------------------------------------
ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_EMPLOYEE_TO_DEPARTMENT FOREIGN KEY (DEPT_NO) REFERENCES DEPARTMENT(NO);
ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_EMPLOYEE_TO_POSITION FOREIGN KEY (POSITION_NO) REFERENCES POSITION(NO);

ALTER TABLE CALENDAR ADD CONSTRAINT FK_CALENDAR_TO_EMPLOYEE FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEE(NO);
ALTER TABLE CALENDAR ADD CONSTRAINT FK_CALENDAR_TO_OPEN_RANGE FOREIGN KEY (OPEN_RANGE_NO) REFERENCES OPEN_RANGE(NO);

ALTER TABLE CALENDAR ADD CONSTRAINT FK_CALENDAR_TO_ADMIN FOREIGN KEY (ADMIN_NO) REFERENCES ADMIN(NO);


ALTER TABLE CALENDAR_MEMBER ADD CONSTRAINT FK_CALENDAR_MEMBER_TO_CALENDAR FOREIGN KEY (CALENDAR_NO) REFERENCES CALENDAR(NO);
ALTER TABLE CALENDAR_MEMBER ADD CONSTRAINT FK_CALENDAR_MEMBER_TO_EMPLOYEE FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEE(NO);

ALTER TABLE ADMIN_PAGE_MENU_AUTHORITY ADD CONSTRAINT FK_ADMIN_PAGE_MENU_AUTHORITY_TO_ADMIN_PAGE_MENU FOREIGN KEY (ADMIN_PAGE_MENU_NO) REFERENCES ADMIN_PAGE_MENU (NO);
ALTER TABLE ADMIN_PAGE_MENU_AUTHORITY ADD CONSTRAINT FK_ADMIN_PAGE_MENU_AUTHORITY_TO_ADMIN_AUTHORITY FOREIGN KEY (ADMIN_AUTHORITY_NO) REFERENCES ADMIN_AUTHORITY (NO);
ALTER TABLE ADMIN ADD CONSTRAINT FK_ADMIN_TO_ADMIN_AUTHORITY FOREIGN KEY (ADMIN_AUTHORITY_NO) REFERENCES ADMIN_AUTHORITY (NO);

--예린---------------------------------------------------------------
ALTER TABLE TODO_MANAGER 
ADD CONSTRAINT FK_TODO_MANAGER_NO 
FOREIGN KEY (TODO_MANAGER_NO) 
REFERENCES EMPLOYEE(NO); 

--투두 참여자테이블에 투두번호
ALTER TABLE TODO_MANAGER
ADD CONSTRAINT FK_TODO_NO
FOREIGN KEY (TODO_NO_MAN)
REFERENCES TODO(TODO_NO);

--투두테이블에 생성사원번호
ALTER TABLE TODO
ADD CONSTRAINT FK_TODO_EMP_NO
FOREIGN KEY (TODO_EMP_NO)
REFERENCES EMPLOYEE(NO);

--설문조사 테이블에 사원번호
ALTER TABLE SURVEY
ADD CONSTRAINT FK_SURVEY_EMP_NO
FOREIGN KEY (SURVEY_EMP_NO)
REFERENCES EMPLOYEE(NO);

--설문공개범위 테이블에서 설문번호
ALTER TABLE SURVEY
ADD CONSTRAINT FK_SURVEY_RA_NO
FOREIGN KEY (SURVEY_NO)
REFERENCES SURVEY(SURVEY_NO);

--설문공개범위 테이블에서 부서번호
ALTER TABLE SURVEY_OPEN_RANGE
ADD CONSTRAINT FK_SURVEY_DEPT_NO
FOREIGN KEY (SURVEY_DEPT_NO)
REFERENCES DEPARTMENT(NO);

--설문응답테이블에서 사원번호
ALTER TABLE SURVEY_RESPONSE
ADD CONSTRAINT FK_ANSWER_EMP_NO
FOREIGN KEY (ANSWER_EMP_NO)
REFERENCES EMPLOYEE(NO);

--설문응답테이블에서 질문내용번호
ALTER TABLE SURVEY_RESPONSE
ADD CONSTRAINT FK__SURVEY_RESPONSE_NO
FOREIGN KEY (SURVEY_RESPONSE_NO)
REFERENCES SURVEY_CONTENT(SURVEY_CONTENT_NO);

--설문질문테이블에서 설문번호
ALTER TABLE SURVEY_CONTENT
ADD CONSTRAINT FK_SURVEY_CO_NO
FOREIGN KEY (SURVEY_NO)
REFERENCES SURVEY(SURVEY_NO);

--지수---------------------------------------------------------------
ALTER TABLE ATTEND
ADD CONSTRAINT FK_ATTEND_EMP
FOREIGN KEY (EMP_NO)
REFERENCES EMPLOYEE(NO);

ALTER TABLE MESSENGER
ADD CONSTRAINT FK_MESSENGER_SENDER
FOREIGN KEY (SENDER_EMP_NO)
REFERENCES EMPLOYEE(NO);

ALTER TABLE MESSENGER
ADD CONSTRAINT FK_MESSENGER_RECEIVER
FOREIGN KEY (RECEIVER_EMP_NO)
REFERENCES EMPLOYEE(NO);

ALTER TABLE MESSENGER
ADD CONSTRAINT FK_MESSENGER_BOX_TYPE
FOREIGN KEY (MESSENBOX_TYPE_NO)
REFERENCES MESSENBOX_TYPE(MESSENBOX_TYPE_NO);

ALTER TABLE MESSENGER_STATUS
ADD CONSTRAINT FK_STATUS_MESSENGER
FOREIGN KEY (MESSEN_NO)
REFERENCES MESSENGER(MESSEN_NO);

ALTER TABLE MESSENGER_STATUS
ADD CONSTRAINT FK_STATUS_EMPLOYEE
FOREIGN KEY (EMP_NO)
REFERENCES EMPLOYEE(NO);

ALTER TABLE MESSEN_FILE
ADD CONSTRAINT FK_MESSEN_NUMBER
FOREIGN KEY (MESSEN_NO)
REFERENCES MESSENGER(MESSEN_NO);

ALTER TABLE MAIL
ADD CONSTRAINT FK_MAIL_SENDER
FOREIGN KEY (SENDER_EMP_NO)
REFERENCES EMPLOYEE(NO);

ALTER TABLE MAIL
ADD CONSTRAINT FK_MAIL_RECEIVER
FOREIGN KEY (RECEIVER_EMP_NO)
REFERENCES EMPLOYEE(NO);

ALTER TABLE MAIL
ADD CONSTRAINT FK_MAIL_BOX_TYPE
FOREIGN KEY (MAIL_TYPE_NO)
REFERENCES MAILBOX_TYPE(MAILBOX_TYPE_NO);

ALTER TABLE MAIL_FILE
ADD CONSTRAINT FK_MAIL_NUMBER
FOREIGN KEY (MAIL_NO)
REFERENCES MAIL(MAIL_NO);

ALTER TABLE ALARM
ADD CONSTRAINT FK_ALARM_EMP
FOREIGN KEY (EMP_NO)
REFERENCES EMPLOYEE(NO);