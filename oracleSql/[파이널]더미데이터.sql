
---------------------------------------------------------------------------------------------------------------------★★★관리자 테이블(수인)


-----------------------------------------------------------------------관리자 페이지 메뉴 테이블
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (1, '권한 관리', '/admin/auth_manage');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (2, '신규 사원 등록','/admin/insert_emp');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (3, '사원 관리', '/admin/list_emp');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (4, '게시판 글 관리', '/admin/manage_board');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (5, '공지사항 관리', '/admin/manage_notice');


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
INSERT INTO ADMIN_PAGE_MENU_AUTHORITY (ADMIN_PAGE_MENU_NO, ADMIN_AUTHORITY_NO,SELECT_YN,INSERT_YN , MODIFY_YN , REMOVE_YN) VALUES (5, 2,'Y','Y','Y','Y');

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
INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human1@gmail.com', '한소희', 'baby.human1', '12345', '한소희.jpg', '01023117875', TO_DATE('2023-09-17', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human2@gmail.com', '제니', 'baby.human2', '12345', '제니.jpg', '01022222452', TO_DATE('2024-01-10', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human3@gmail.com', '수지', 'baby.human3', '12345', '수지.jpg', '01033333333', TO_DATE('2023-12-01', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human4@gmail.com', '카즈하', 'baby.human4', '12345', '카즈하.jpg', '01039490877', TO_DATE('2023-05-11', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human5@gmail.com', '로제', 'baby.human5', '12345', '로제.jpg', '01055555555', TO_DATE('2024-03-21', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human.manager@gmail.com', '아이유', 'baby.human.manager', '12345', '아이유.jpg', '01012341234', TO_DATE('2020-08-21', 'YYYY-MM-DD'), 'N', 'N', 1, 3);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human.director@gmail.com', '한예슬', 'baby.human.director', '12345', '한예슬.jpg', '01023452345', TO_DATE('2023-03-03', 'YYYY-MM-DD'), 'N', 'N', 1, 2);


----2.직원테이블의 : 총무부 더미 데이터
INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs1@gmail.com', '미노이', 'baby.affairs1', '12345', '미노이.jpg', '01011236111', TO_DATE('2022-08-22', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs2@gmail.com', '박보검', 'baby.affairs2', '12345', '박보검.jpg', '01022222222', TO_DATE('2023-03-07', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs3@gmail.com', '카리나', 'baby.affairs3', '12345', '카리나.jpg', '01033333333', TO_DATE('2023-09-03', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs4@gmail.com', '김태리', 'baby.affairs4', '12345', '김태리.jpg', '01023239090', TO_DATE('2023-03-09', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs5@gmail.com', '안유진', 'baby.affairs5', '12345', '안유진.jpg', '01055555552', TO_DATE('2023-07-16', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs.manager@gmail.com', '노윤서', 'baby.affairs.manager', '12345', '노윤서.jpg', '01012341234', SYSDATE, 'N', 'N', 2, 3);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs.director@gmail.com', '천우희', 'baby.affairs.director', '12345', '천우희.jpg', '01023452345', SYSDATE, 'N', 'N', 2, 2);



----3.직원테이블의 : 개발부 더미 데이터
INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev1@gmail.com', '민지', 'baby.dev1', '12345', '민지.jpg', '01011111111', TO_DATE('2022-12-22', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev2@gmail.com', '유아', 'emp2_dev', '12345', '유아.jpg', '01022222222', TO_DATE('2023-01-11', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev3@gmail.com', '아린', 'baby.dev2', '12345', '아린.jpg', '01033333333', TO_DATE('2023-02-21', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev4@gmail.com', '임보라', 'baby.dev4', '12345', '임보라.jpg', '01035789032', TO_DATE('2022-05-11', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev5@gmail.com', '신예은', 'baby.dev5', '12345', '신예은.jpg', '01055555555', TO_DATE('2021-08-01', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev.manager@gmail.com', '아이린', 'baby.dev.manager', '12345', '아이린.jpg', '01012341234', TO_DATE('2022-06-21', 'YYYY-MM-DD'), 'N', 'N', 3, 3);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev.director@gmail.com', '장원영', 'baby.dev.director', '12345', '장원영.jpg', '01023452345', TO_DATE('2020-11-20', 'YYYY-MM-DD'), 'N', 'N', 3, 2);


----4.직원테이블의 : 영업부 더미 데이터
INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales1@gmail.com', '남주혁', 'baby.sales1', '12345', '남주혁.jpg', '01011111111', TO_DATE('2023-07-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales2@gmail.com', '차은우', 'baby.sales2', '12345', '차은우.jpg', '01022222222', TO_DATE('2023-05-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales3@gmail.com', '이도현', 'baby.sales3', '12345', '이도현.jpg', '01033333333', TO_DATE('2023-01-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales4@gmail.com', '서강준', 'baby.sales4', '12345', '서강준.jpg', '01018768591', TO_DATE('2023-02-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales5@gmail.com', '전지현', 'baby.sales5', '12345', '전지현.jpg', '01055555555', TO_DATE('2023-06-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales.manager@gmail.com', '송강', 'baby.sales.manager', '12345', '송강.jpg', '01012341234', TO_DATE('2020-02-21', 'YYYY-MM-DD'), 'N', 'N', 4, 3);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales.director@gmail.com', '고윤정', 'baby.sales.director', '12345', '고윤정.jpg', '01023452345', TO_DATE('2010-06-21', 'YYYY-MM-DD'), 'N', 'N', 4, 2);


----5.직원테이블의 : 사장 더미데이터
INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human1@gmail.com', '안효섭', 'baby.CEO', '12345', '안효섭.jpg', '01088082111', TO_DATE('1999-02-07', 'YYYY-MM-DD'),  'N', 'N', 1, 1);


commit;



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

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)

-------------------------------------------------------------------------------------------------------------------------★★★테이블명(조원 이름)



