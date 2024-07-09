
---------------------------------------------------------------------------------------------------------------------★★★관리자 테이블(수인)


-----------------------------------------------------------------------관리자 페이지 메뉴 테이블
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (1, '권한 관리', '/admin/auth_manage');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (2, '신규 사원 등록','/admin/insert_emp');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (3, '사원 관리', '/admin/list_emp');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (4, '게시판 글 관리', '/admin/manage_board');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (5, '일정관리', '/admin/manage_schedule');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (6, '공지사항 관리', '/notice/list');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (7, '차량예약 관리', '/admin/rent/list');

-----------------------------------------------------------------------관리자 권한 테이블
INSERT INTO ADMIN_AUTHORITY (NO, NAME) VALUES (1, '최고관리자');
INSERT INTO ADMIN_AUTHORITY (NO, NAME) VALUES (2, '하위관리자');

-----------------------------------------------------------------------관리자 페이지 메뉴 권한 테이블

INSERT INTO ADMIN_PAGE_MENU_AUTHORITY (ADMIN_PAGE_MENU_NO, ADMIN_AUTHORITY_NO,SELECT_YN,INSERT_YN , MODIFY_YN , REMOVE_YN) VALUES (1, 1,'Y','Y','Y','Y');
INSERT INTO ADMIN_PAGE_MENU_AUTHORITY (ADMIN_PAGE_MENU_NO, ADMIN_AUTHORITY_NO) VALUES (1, 2);
INSERT INTO ADMIN_PAGE_MENU_AUTHORITY (ADMIN_PAGE_MENU_NO, ADMIN_AUTHORITY_NO,SELECT_YN,INSERT_YN , MODIFY_YN , REMOVE_YN) VALUES (2, 1,'Y','Y','Y','Y');
INSERT INTO ADMIN_PAGE_MENU_AUTHORITY (ADMIN_PAGE_MENU_NO, ADMIN_AUTHORITY_NO) VALUES (2, 2);
INSERT INTO ADMIN_PAGE_MENU_AUTHORITY (ADMIN_PAGE_MENU_NO, ADMIN_AUTHORITY_NO,SELECT_YN,INSERT_YN , MODIFY_YN , REMOVE_YN) VALUES (3, 1,'Y','Y','Y','Y');
INSERT INTO ADMIN_PAGE_MENU_AUTHORITY (ADMIN_PAGE_MENU_NO, ADMIN_AUTHORITY_NO) VALUES (3, 2);
INSERT INTO ADMIN_PAGE_MENU_AUTHORITY (ADMIN_PAGE_MENU_NO, ADMIN_AUTHORITY_NO,SELECT_YN,INSERT_YN , MODIFY_YN , REMOVE_YN) VALUES (4, 1,'Y','Y','Y','Y');
INSERT INTO ADMIN_PAGE_MENU_AUTHORITY (ADMIN_PAGE_MENU_NO, ADMIN_AUTHORITY_NO) VALUES (4, 2);
INSERT INTO ADMIN_PAGE_MENU_AUTHORITY (ADMIN_PAGE_MENU_NO, ADMIN_AUTHORITY_NO,SELECT_YN,INSERT_YN , MODIFY_YN , REMOVE_YN) VALUES (5, 1,'Y','Y','Y','Y');
INSERT INTO ADMIN_PAGE_MENU_AUTHORITY (ADMIN_PAGE_MENU_NO, ADMIN_AUTHORITY_NO) VALUES (5, 2);
INSERT INTO ADMIN_PAGE_MENU_AUTHORITY (ADMIN_PAGE_MENU_NO, ADMIN_AUTHORITY_NO,SELECT_YN,INSERT_YN , MODIFY_YN , REMOVE_YN) VALUES (6, 1,'Y','Y','Y','Y');
INSERT INTO ADMIN_PAGE_MENU_AUTHORITY (ADMIN_PAGE_MENU_NO, ADMIN_AUTHORITY_NO,SELECT_YN,INSERT_YN , MODIFY_YN , REMOVE_YN) VALUES (6, 2,'Y','Y','Y','Y');
INSERT INTO ADMIN_PAGE_MENU_AUTHORITY (ADMIN_PAGE_MENU_NO, ADMIN_AUTHORITY_NO,SELECT_YN,INSERT_YN , MODIFY_YN , REMOVE_YN) VALUES (7, 1,'Y','Y','Y','Y');
INSERT INTO ADMIN_PAGE_MENU_AUTHORITY (ADMIN_PAGE_MENU_NO, ADMIN_AUTHORITY_NO,SELECT_YN,INSERT_YN , MODIFY_YN , REMOVE_YN) VALUES (7, 2,'Y','Y','Y','Y');



-----------------------------------------------------------------------관리자 계정 테이블(비밀번호는 '12345')
INSERT INTO ADMIN (NO, ID, PWD, ADMIN_AUTHORITY_NO) VALUES (SEQ_ADMIN.NEXTVAL, 'superAdmin', '12345', 1);
INSERT INTO ADMIN (NO, ID, PWD, ADMIN_AUTHORITY_NO) VALUES (SEQ_ADMIN.NEXTVAL, 'subAdmin', '12345', 2);



------------------------------------------------------------------------------------------------------------------------★★★직원테이블(수인)

-----------------------------------------------------------------------직원 POSITION 테이블
INSERT INTO POSITION (NO, NAME) VALUES (SEQ_POSITION.NEXTVAL, '사장');
INSERT INTO POSITION (NO, NAME) VALUES (SEQ_POSITION.NEXTVAL, '부장');
INSERT INTO POSITION (NO, NAME) VALUES (SEQ_POSITION.NEXTVAL, '대리');
INSERT INTO POSITION (NO, NAME) VALUES (SEQ_POSITION.NEXTVAL, '사원');

------------------------------------------------------------------------직원 DEPARTMENT 테이블
INSERT INTO DEPARTMENT (NO, NAME) VALUES (SEQ_DEPARTMENT.NEXTVAL, '인사부');
INSERT INTO DEPARTMENT (NO, NAME) VALUES (SEQ_DEPARTMENT.NEXTVAL, '총무부');
INSERT INTO DEPARTMENT (NO, NAME) VALUES (SEQ_DEPARTMENT.NEXTVAL, '개발부');
INSERT INTO DEPARTMENT (NO, NAME) VALUES (SEQ_DEPARTMENT.NEXTVAL, '영업부');




------------------------------------------------------------------------직원 테이블의 더미데이터 :인사부/총무부/개발부/영업부 그리고 사장으로 구성 : 비밀번호는'12345'

----1.직원테이블의 : 인사부 더미 데이터
INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human1@gmail.com', '한소희', 'baby.human1', '12345', '한소희.jpg', '01023117875', TO_DATE('2023-09-17', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human2@gmail.com', '제니', 'baby.human2', '12345', '제니.jpg', '01022222452', TO_DATE('2024-01-10', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human3@gmail.com', '수지', 'baby.human3', '12345', '수지.jpg', '01033333333', TO_DATE('2023-12-01', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human4@gmail.com', '카즈하', 'baby.human4', '12345', '카즈하.jpg', '01039490877', TO_DATE('2023-05-11', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human5@gmail.com', '로제', 'baby.human5', '12345', '로제.jpg', '01055555555', TO_DATE('2024-03-21', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human.manager@gmail.com', '아이유', 'baby.human.manager', '12345', '아이유.jpg', '01012341234', TO_DATE('2020-08-21', 'YYYY-MM-DD'), 'N', 'N', 1, 3);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human.director@gmail.com', '한예슬', 'baby.human.director', '12345', '한예슬.jpg', '01023452345', TO_DATE('2023-03-03', 'YYYY-MM-DD'), 'N', 'N', 1, 2);


----2.직원테이블의 : 총무부 더미 데이터
INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs1@gmail.com', '미노이', 'baby.affairs1', '12345', '미노이.jpg', '01011236111', TO_DATE('2022-08-22', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs2@gmail.com', '박보검', 'baby.affairs2', '12345', '박보검.jpg', '01022222222', TO_DATE('2023-03-07', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs3@gmail.com', '카리나', 'baby.affairs3', '12345', '카리나.jpg', '01033333333', TO_DATE('2023-09-03', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs4@gmail.com', '김태리', 'baby.affairs4', '12345', '김태리.jpg', '01023239090', TO_DATE('2023-03-09', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs5@gmail.com', '안유진', 'baby.affairs5', '12345', '안유진.jpg', '01055555552', TO_DATE('2023-07-16', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs.manager@gmail.com', '노윤서', 'baby.affairs.manager', '12345', '노윤서.jpg', '01012341234', SYSDATE, 'N', 'N', 2, 3);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs.director@gmail.com', '천우희', 'baby.affairs.director', '12345', '천우희.jpg', '01023452345', SYSDATE, 'N', 'N', 2, 2);



----3.직원테이블의 : 개발부 더미 데이터


INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'roun321@gmail.com', '로운', 'rounworks', '12345', '로운.png', '01057573354', TO_DATE('2023-05-11', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'tndls5304@naver.com', '밍수인', 'ming2', '12345', '밍수인.jpg', '01057055569', TO_DATE('2024-01-03', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'geuna@gmail.com', '박근아', 'geuna2', '12345', '박근아.jpg', '01037375656', TO_DATE('2023-02-22', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'yerin@gmail.com', '송예린', 'yerin2', '12345', '송예린.jpg', '01027586465', TO_DATE('2022-09-08', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'jisoo@gmail.com', '이지수', 'jisoo2', '12345', '이지수.jpg', '01077582590', TO_DATE('2023-01-11', 'YYYY-MM-DD'), 'N', 'N', 3, 4);


INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev1@gmail.com', '민지', 'baby.dev1', '12345', '민지.jpg', '01011111111', TO_DATE('2022-12-22', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev2@gmail.com', '유아', 'emp2_dev', '12345', '유아.jpg', '01022222222', TO_DATE('2023-01-11', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev3@gmail.com', '아린', 'baby.dev2', '12345', '아린.jpg', '01033333333', TO_DATE('2023-02-21', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev4@gmail.com', '임보라', 'baby.dev4', '12345', '임보라.jpg', '01035789032', TO_DATE('2022-05-11', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev5@gmail.com', '신예은', 'baby.dev5', '12345', '신예은.jpg', '01055555555', TO_DATE('2021-08-01', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev.manager@gmail.com', '아이린', 'baby.dev.manager', '12345', '아이린.jpg', '01012341234', TO_DATE('2022-06-21', 'YYYY-MM-DD'), 'N', 'N', 3, 3);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev.director@gmail.com', '장원영', 'baby.dev.director', '12345', '장원영.jpg', '01023452345', TO_DATE('2020-11-20', 'YYYY-MM-DD'), 'N', 'N', 3, 2);


----4.직원테이블의 : 영업부 더미 데이터
INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales1@gmail.com', '남주혁', 'baby.sales1', '12345', '남주혁.jpg', '01011111111', TO_DATE('2023-07-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales2@gmail.com', '차은우', 'baby.sales2', '12345', '차은우.jpg', '01022222222', TO_DATE('2023-05-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales3@gmail.com', '이도현', 'baby.sales3', '12345', '이도현.jpg', '01033333333', TO_DATE('2023-01-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales4@gmail.com', '서강준', 'baby.sales4', '12345', '서강준.jpg', '01018768591', TO_DATE('2023-02-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales5@gmail.com', '전지현', 'baby.sales5', '12345', '전지현.jpg', '01055555555', TO_DATE('2023-06-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales.manager@gmail.com', '송강', 'baby.sales.manager', '12345', '송강.jpg', '01012341234', TO_DATE('2020-02-21', 'YYYY-MM-DD'), 'N', 'N', 4, 3);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales.director@gmail.com', '고윤정', 'baby.sales.director', '12345', '고윤정.jpg', '01023452345', TO_DATE('2010-06-21', 'YYYY-MM-DD'), 'N', 'N', 4, 2);


----5.직원테이블의 : 사장 더미데이터
INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human1@gmail.com', '안효섭', 'baby.CEO', '12345', '안효섭.jpg', '01088082111', TO_DATE('1999-02-07', 'YYYY-MM-DD'),  'N', 'N', 1);


------------------------------------------------------------------------------------------------------------------------★★★캘린더 공개범위 더미데이터(수인)
INSERT INTO OPEN_RANGE(NO,NAME) VALUES ('1','전체공개');
INSERT INTO OPEN_RANGE(NO,NAME) VALUES ('2','참여자 지정하기');
INSERT INTO OPEN_RANGE(NO,NAME) VALUES ('3','개인일정');   
INSERT INTO OPEN_RANGE(NO,NAME) VALUES ('4','부서내 공개'); 


commit;


--근아
---미팅룸 더미테이터
INSERT INTO MEETING_ROOM (MET_ROOM_NO,NAME , FLOOR)
VALUES (SEQ_MEETING_ROOM.NEXTVAL , 'Python' , 5);

INSERT INTO MEETING_ROOM (MET_ROOM_NO,NAME , FLOOR)
VALUES (SEQ_MEETING_ROOM.NEXTVAL , 'Java' , 5);

INSERT INTO MEETING_ROOM (MET_ROOM_NO,NAME , FLOOR)
VALUES (SEQ_MEETING_ROOM.NEXTVAL , 'JavaScript' , 5);

INSERT INTO MEETING_ROOM (MET_ROOM_NO,NAME , FLOOR)
VALUES (SEQ_MEETING_ROOM.NEXTVAL , 'C++' , 7);

INSERT INTO MEETING_ROOM (MET_ROOM_NO,NAME , FLOOR)
VALUES (SEQ_MEETING_ROOM.NEXTVAL , 'C' , 7);

INSERT INTO MEETING_ROOM (MET_ROOM_NO,NAME , FLOOR)
VALUES (SEQ_MEETING_ROOM.NEXTVAL , 'PHP' , 7);

INSERT INTO MEETING_ROOM (MET_ROOM_NO,NAME , FLOOR)
VALUES (SEQ_MEETING_ROOM.NEXTVAL , 'HTML' , 7);

INSERT INTO MEETING_ROOM (MET_ROOM_NO,NAME , FLOOR)
VALUES (SEQ_MEETING_ROOM.NEXTVAL , 'VSCode' , 11);

INSERT INTO MEETING_ROOM (MET_ROOM_NO,NAME , FLOOR)
VALUES (SEQ_MEETING_ROOM.NEXTVAL , 'IntelliJ' , 11);

INSERT INTO MEETING_ROOM (MET_ROOM_NO,NAME , FLOOR)
VALUES (SEQ_MEETING_ROOM.NEXTVAL , 'Eclipse' , 13);

INSERT INTO MEETING_ROOM (MET_ROOM_NO,NAME , FLOOR)
VALUES (SEQ_MEETING_ROOM.NEXTVAL , 'CMD' , 13);

INSERT INTO MEETING_ROOM (MET_ROOM_NO,NAME , FLOOR)
VALUES (SEQ_MEETING_ROOM.NEXTVAL , 'GitHub' , 13);

INSERT INTO MEETING_ROOM (MET_ROOM_NO,NAME , FLOOR)
VALUES (SEQ_MEETING_ROOM.NEXTVAL , 'Notion' , 13);

--------------------------------------------------------------------------------------------------------------------------
--근아 차량 더미데이터
INSERT INTO VEHICLE_TYPE (VHCL_TYPE_NO, NAME)
VALUES (SEQ_VEHICLE_TYPE.NEXTVAL , '소나타');

INSERT INTO VEHICLE_TYPE (VHCL_TYPE_NO, NAME)
VALUES (SEQ_VEHICLE_TYPE.NEXTVAL , '아반떼');

INSERT INTO VEHICLE_TYPE (VHCL_TYPE_NO, NAME)
VALUES (SEQ_VEHICLE_TYPE.NEXTVAL , 'K9');

INSERT INTO VEHICLE_TYPE (VHCL_TYPE_NO, NAME)
VALUES (SEQ_VEHICLE_TYPE.NEXTVAL , 'Mercedes_G-Class');


INSERT INTO VEHICLE (VHCL_NO ,VHCL_TYPE_NO, VHCL_NUMBER)
VALUES (SEQ_VEHICLE.NEXTVAL , 1 , 1019);

INSERT INTO VEHICLE (VHCL_NO ,VHCL_TYPE_NO, VHCL_NUMBER)
VALUES (SEQ_VEHICLE.NEXTVAL , 2 , 8140);

INSERT INTO VEHICLE (VHCL_NO ,VHCL_TYPE_NO, VHCL_NUMBER)
VALUES (SEQ_VEHICLE.NEXTVAL , 2 , 1418);

INSERT INTO VEHICLE (VHCL_NO ,VHCL_TYPE_NO, VHCL_NUMBER)
VALUES (SEQ_VEHICLE.NEXTVAL , 3 , 5250);

INSERT INTO VEHICLE (VHCL_NO ,VHCL_TYPE_NO, VHCL_NUMBER)
VALUES (SEQ_VEHICLE.NEXTVAL , 3 , 5719);

INSERT INTO VEHICLE (VHCL_NO ,VHCL_TYPE_NO, VHCL_NUMBER)
VALUES (SEQ_VEHICLE.NEXTVAL , 3 , 4985);

INSERT INTO VEHICLE (VHCL_NO ,VHCL_TYPE_NO, VHCL_NUMBER)
VALUES (SEQ_VEHICLE.NEXTVAL , 4 , 2001);

INSERT INTO VEHICLE (VHCL_NO ,VHCL_TYPE_NO, VHCL_NUMBER)
VALUES (SEQ_VEHICLE.NEXTVAL , 4 , 1997);

INSERT INTO VEHICLE (VHCL_NO ,VHCL_TYPE_NO, VHCL_NUMBER)
VALUES (SEQ_VEHICLE.NEXTVAL , 1 , 2002);

INSERT INTO VEHICLE (VHCL_NO ,VHCL_TYPE_NO, VHCL_NUMBER)
VALUES (SEQ_VEHICLE.NEXTVAL , 1 , 3130);

INSERT INTO VEHICLE (VHCL_NO ,VHCL_TYPE_NO, VHCL_NUMBER)
VALUES (SEQ_VEHICLE.NEXTVAL , 2 , 7365);

COMMIT;
---------------------------------------------------------------------------------------------------------------------------
--근아 총무부 승인
INSERT INTO APPROVAL_STATUS (APPROVAL_NO ,APPROVAL_STATUS) VALUES (SEQ_APPROVAL_STATUS.NEXTVAL , '미승인');

INSERT INTO APPROVAL_STATUS (APPROVAL_NO ,APPROVAL_STATUS) VALUES (SEQ_APPROVAL_STATUS.NEXTVAL , '승인');

INSERT INTO APPROVAL_STATUS (APPROVAL_NO ,APPROVAL_STATUS) VALUES (SEQ_APPROVAL_STATUS.NEXTVAL , '보류');

COMMIT;
-------------------------------------------------------------------------------------------------------------------------★★★근태테이블(이지수)
--사원1번 -----------------------------------------------------
INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    1,
    TO_TIMESTAMP('2024-06-02 09:10:14', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-02 19:50:45', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    1,
    TO_TIMESTAMP('2024-06-03 08:00:14', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-03 17:00:05', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    1,
    TO_TIMESTAMP('2024-06-04 09:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-04 15:00:00', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    1,
    TO_TIMESTAMP('2024-06-11 07:40:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-11 18:30:10', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    1,
    TO_TIMESTAMP('2024-06-20 09:05:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-20 19:10:30', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    1,
    TO_TIMESTAMP('2024-06-26 09:11:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-26 20:32:10', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    1,
    TO_TIMESTAMP('2024-06-30 09:00:20', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-30 22:22:00', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    1,
    TO_TIMESTAMP('2024-07-03 09:10:20', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-07-03 18:12:25', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    1,
    TO_TIMESTAMP('2024-07-04 08:00:20', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-07-04 13:11:12', 'YYYY-MM-DD HH24:MI:SS')
);

--사원2번 --------------------------------------------------------
INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    2,
    TO_TIMESTAMP('2024-06-02 09:10:14', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-02 19:50:45', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    2,
    TO_TIMESTAMP('2024-06-03 08:00:14', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-03 17:00:05', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    2,
    TO_TIMESTAMP('2024-06-04 09:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-04 15:00:00', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    2,
    TO_TIMESTAMP('2024-06-11 07:40:01', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-11 18:30:10', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    2,
    TO_TIMESTAMP('2024-06-20 09:05:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-20 19:10:30', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    2,
    TO_TIMESTAMP('2024-06-26 09:11:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-26 20:32:10', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    2,
    TO_TIMESTAMP('2024-06-30 09:00:20', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-30 22:22:00', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    2,
    TO_TIMESTAMP('2024-07-03 09:11:20', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-07-03 18:12:25', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    2,
    TO_TIMESTAMP('2024-07-04 08:00:20', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-07-04 13:11:12', 'YYYY-MM-DD HH24:MI:SS')
);


--사원17번: 근아언니  --------------------------------------------------------
INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    17,
    TO_TIMESTAMP('2024-05-20 08:00:20', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-05-20 17:00:12', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    17,
    TO_TIMESTAMP('2024-05-31 08:01:10', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-05-31 17:00:00', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    17,
    TO_TIMESTAMP('2024-06-03 07:59:02', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-03 17:10:12', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    17,
    TO_TIMESTAMP('2024-06-04 08:00:20', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-04 17:05:12', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    17,
    TO_TIMESTAMP('2024-06-11 08:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-11 17:00:00', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    17,
    TO_TIMESTAMP('2024-06-12 08:10:20', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-12 17:21:12', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    17,
    TO_TIMESTAMP('2024-06-13 08:01:40', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-13 17:00:00', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    17,
    TO_TIMESTAMP('2024-06-20 07:55:20', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-20 17:00:10', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    17,
    TO_TIMESTAMP('2024-06-21 07:56:16', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-06-21 17:30:00', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    17,
    TO_TIMESTAMP('2024-07-01 07:50:20', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-07-01 17:10:12', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    17,
    TO_TIMESTAMP('2024-07-02 07:56:10', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-07-02 17:10:22', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    17,
    TO_TIMESTAMP('2024-07-03 07:59:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-07-03 18:00:00', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    17,
    TO_TIMESTAMP('2024-07-04 08:00:20', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-07-04 17:11:12', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    17,
    TO_TIMESTAMP('2024-07-05 07:58:20', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-07-05 17:01:22', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO ATTEND (
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL,
    17,
    TO_TIMESTAMP('2024-07-08 07:50:20', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-07-08 17:01:11', 'YYYY-MM-DD HH24:MI:SS')
);

--INSERT INTO ATTEND (
--    ATTEND_NO,
--    EMP_NO,
--    START_TIME,
--    END_TIME
--) 
--VALUES (
--    SEQ_ATTEND.NEXTVAL,
--    17,
--    TO_TIMESTAMP('2024-07-10 07:55:20', 'YYYY-MM-DD HH24:MI:SS'),
--    TO_TIMESTAMP('2024-07-10 17:00:11', 'YYYY-MM-DD HH24:MI:SS')
--);
--
--INSERT INTO ATTEND (
--    ATTEND_NO,
--    EMP_NO,
--    START_TIME,
--    END_TIME
--) 
--VALUES (
--    SEQ_ATTEND.NEXTVAL,
--    17,
--    TO_TIMESTAMP('2024-07-11 07:58:16', 'YYYY-MM-DD HH24:MI:SS'),
--    TO_TIMESTAMP('2024-07-11 17:00:11', 'YYYY-MM-DD HH24:MI:SS')
--);
--
--INSERT INTO ATTEND (
--    ATTEND_NO,
--    EMP_NO,
--    START_TIME,
--    END_TIME
--) 
--VALUES (
--    SEQ_ATTEND.NEXTVAL,
--    17,
--    TO_TIMESTAMP('2024-07-12 07:59:59', 'YYYY-MM-DD HH24:MI:SS'),
--    TO_TIMESTAMP('2024-07-12 17:04:50', 'YYYY-MM-DD HH24:MI:SS')
--);
--
--INSERT INTO ATTEND (
--    ATTEND_NO,
--    EMP_NO,
--    START_TIME,
--    END_TIME
--) 
--VALUES (
--    SEQ_ATTEND.NEXTVAL,
--    17,
--    TO_TIMESTAMP('2024-07-15 07:58:16', 'YYYY-MM-DD HH24:MI:SS'),
--    TO_TIMESTAMP('2024-07-15 17:30:50', 'YYYY-MM-DD HH24:MI:SS')
--);
--
--INSERT INTO ATTEND (
--    ATTEND_NO,
--    EMP_NO,
--    START_TIME,
--    END_TIME
--) 
--VALUES (
--    SEQ_ATTEND.NEXTVAL,
--    17,
--    TO_TIMESTAMP('2024-07-16 08:30:52', 'YYYY-MM-DD HH24:MI:SS'),
--    TO_TIMESTAMP('2024-07-16 17:00:50', 'YYYY-MM-DD HH24:MI:SS')
--);
--
--INSERT INTO ATTEND (
--    ATTEND_NO,
--    EMP_NO,
--    START_TIME,
--    END_TIME
--) 
--VALUES (
--    SEQ_ATTEND.NEXTVAL,
--    17,
--    TO_TIMESTAMP('2024-07-17 08:01:01', 'YYYY-MM-DD HH24:MI:SS'),
--    TO_TIMESTAMP('2024-07-17 17:10:16', 'YYYY-MM-DD HH24:MI:SS')
--);


COMMIT;

-------------------------------------------------------------------------------------------------------------------------★★★쪽지테이블(이지수)
--근아언니 프로필 더미데이터용 
INSERT INTO MESSENGER (MESSEN_NO, SENDER_EMP_NO, RECEIVER_EMP_NO, TITLE, CONTENT, SEND_DATE)
VALUES (SEQ_MESSENGER.NEXTVAL, 34, 17, 'Meeting Schedule', 'Please confirm your availability.', TIMESTAMP '2024-05-15 10:00:00');

INSERT INTO MESSENGER (MESSEN_NO, SENDER_EMP_NO, RECEIVER_EMP_NO, TITLE, CONTENT, SEND_DATE)
VALUES (SEQ_MESSENGER.NEXTVAL, 17, 15, '로운! 오늘 야근?', '7시에 술 마시러 가자 ㄱㄱ', TIMESTAMP '2024-06-20 14:30:26');

INSERT INTO MESSENGER (MESSEN_NO, SENDER_EMP_NO, RECEIVER_EMP_NO, TITLE, CONTENT, SEND_DATE)
VALUES (SEQ_MESSENGER.NEXTVAL, 17, 16, '언니 나 하기 싫어어얼어 ㅜㅜ ', '퇴근할까....? ㅋㅋㅋㅋㅋㅋㅋㅋㅋ', TIMESTAMP '2024-07-05 13:20:46');

INSERT INTO MESSENGER (MESSEN_NO, SENDER_EMP_NO, RECEIVER_EMP_NO, TITLE, CONTENT, SEND_DATE)
VALUES (SEQ_MESSENGER.NEXTVAL, 18, 17, '근아야. 회사에서는 좀 조용히', '그만 좀 먹어 그나야.', TIMESTAMP '2024-07-08 11:02:00');

INSERT INTO MESSENGER (MESSEN_NO, SENDER_EMP_NO, RECEIVER_EMP_NO, TITLE, CONTENT, SEND_DATE)
VALUES (SEQ_MESSENGER.NEXTVAL, 19, 17, '언니언니언니언니 빨리!!!!', '내 자리로 오세요', TIMESTAMP '2024-07-17 16:01:00');


COMMIT;

-------------------------------------------------------------------------------------------------------------------------★★★알림테이블(이지수)
--근아언니 프로필 더미데이터용 
INSERT INTO ALARM (ALARM_NO, EMP_NO, MESSAGE)
VALUES (SEQ_ALARM.NEXTVAL, 17, '? 새로운 쪽지가 도착했습니다.'|| CHR(10) || '안효섭 님이 쪽지를 보냈습니다.');

INSERT INTO ALARM (ALARM_NO, EMP_NO, MESSAGE)
VALUES (SEQ_ALARM.NEXTVAL, 17, '? 새로운 쪽지가 도착했습니다.'|| CHR(10) || '송예린 님이 쪽지를 보냈습니다.');

INSERT INTO ALARM (ALARM_NO, EMP_NO, MESSAGE)
VALUES (SEQ_ALARM.NEXTVAL, 17, '? 새로운 쪽지가 도착했습니다.'|| CHR(10) || '이수인 님이 쪽지를 보냈습니다.');

INSERT INTO ALARM (ALARM_NO, EMP_NO, MESSAGE)
VALUES (SEQ_ALARM.NEXTVAL, 17, '? 새로운 쪽지가 도착했습니다.'|| CHR(10) || '심원용 님이 쪽지를 보냈습니다.');

INSERT INTO ALARM (ALARM_NO, EMP_NO, MESSAGE)
VALUES (SEQ_ALARM.NEXTVAL, 17, '? 새로운 쪽지가 도착했습니다.' || CHR(10) || '이지수 님이 쪽지를 보냈습니다.');


COMMIT;

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)



