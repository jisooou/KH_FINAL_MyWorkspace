
---------------------------------------------------------------------------------------------------------------------�ڡڡڰ����� ���̺�(����)


-----------------------------------------------------------------------������ ������ �޴� ���̺�
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (1, '���� ����', '/admin/auth_manage');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (2, '�ű� ��� ���','/admin/insert_emp');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (3, '��� ����', '/admin/list_emp');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (4, '�Խ��� �� ����', '/admin/manage_board');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (5, '��������', '/admin/manage_schedule');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (6, '�������� ����', '/notice/list');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (7, '�������� ����', '/admin/rent/list');

-----------------------------------------------------------------------������ ���� ���̺�
INSERT INTO ADMIN_AUTHORITY (NO, NAME) VALUES (1, '�ְ������');
INSERT INTO ADMIN_AUTHORITY (NO, NAME) VALUES (2, '����������');

-----------------------------------------------------------------------������ ������ �޴� ���� ���̺�

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



-----------------------------------------------------------------------������ ���� ���̺�(��й�ȣ�� '12345')
INSERT INTO ADMIN (NO, ID, PWD, ADMIN_AUTHORITY_NO) VALUES (SEQ_ADMIN.NEXTVAL, 'superAdmin', '12345', 1);
INSERT INTO ADMIN (NO, ID, PWD, ADMIN_AUTHORITY_NO) VALUES (SEQ_ADMIN.NEXTVAL, 'subAdmin', '12345', 2);



------------------------------------------------------------------------------------------------------------------------�ڡڡ��������̺�(����)

-----------------------------------------------------------------------���� POSITION ���̺�
INSERT INTO POSITION (NO, NAME) VALUES (SEQ_POSITION.NEXTVAL, '����');
INSERT INTO POSITION (NO, NAME) VALUES (SEQ_POSITION.NEXTVAL, '����');
INSERT INTO POSITION (NO, NAME) VALUES (SEQ_POSITION.NEXTVAL, '�븮');
INSERT INTO POSITION (NO, NAME) VALUES (SEQ_POSITION.NEXTVAL, '���');

------------------------------------------------------------------------���� DEPARTMENT ���̺�
INSERT INTO DEPARTMENT (NO, NAME) VALUES (SEQ_DEPARTMENT.NEXTVAL, '�λ��');
INSERT INTO DEPARTMENT (NO, NAME) VALUES (SEQ_DEPARTMENT.NEXTVAL, '�ѹ���');
INSERT INTO DEPARTMENT (NO, NAME) VALUES (SEQ_DEPARTMENT.NEXTVAL, '���ߺ�');
INSERT INTO DEPARTMENT (NO, NAME) VALUES (SEQ_DEPARTMENT.NEXTVAL, '������');




------------------------------------------------------------------------���� ���̺��� ���̵����� :�λ��/�ѹ���/���ߺ�/������ �׸��� �������� ���� : ��й�ȣ��'12345'

----1.�������̺��� : �λ�� ���� ������
INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human1@gmail.com', '�Ѽ���', 'baby.human1', '12345', '�Ѽ���.jpg', '01023117875', TO_DATE('2023-09-17', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human2@gmail.com', '����', 'baby.human2', '12345', '����.jpg', '01022222452', TO_DATE('2024-01-10', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human3@gmail.com', '����', 'baby.human3', '12345', '����.jpg', '01033333333', TO_DATE('2023-12-01', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human4@gmail.com', 'ī����', 'baby.human4', '12345', 'ī����.jpg', '01039490877', TO_DATE('2023-05-11', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human5@gmail.com', '����', 'baby.human5', '12345', '����.jpg', '01055555555', TO_DATE('2024-03-21', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human.manager@gmail.com', '������', 'baby.human.manager', '12345', '������.jpg', '01012341234', TO_DATE('2020-08-21', 'YYYY-MM-DD'), 'N', 'N', 1, 3);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human.director@gmail.com', '�ѿ���', 'baby.human.director', '12345', '�ѿ���.jpg', '01023452345', TO_DATE('2023-03-03', 'YYYY-MM-DD'), 'N', 'N', 1, 2);


----2.�������̺��� : �ѹ��� ���� ������
INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs1@gmail.com', '�̳���', 'baby.affairs1', '12345', '�̳���.jpg', '01011236111', TO_DATE('2022-08-22', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs2@gmail.com', '�ں���', 'baby.affairs2', '12345', '�ں���.jpg', '01022222222', TO_DATE('2023-03-07', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs3@gmail.com', 'ī����', 'baby.affairs3', '12345', 'ī����.jpg', '01033333333', TO_DATE('2023-09-03', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs4@gmail.com', '���¸�', 'baby.affairs4', '12345', '���¸�.jpg', '01023239090', TO_DATE('2023-03-09', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs5@gmail.com', '������', 'baby.affairs5', '12345', '������.jpg', '01055555552', TO_DATE('2023-07-16', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs.manager@gmail.com', '������', 'baby.affairs.manager', '12345', '������.jpg', '01012341234', SYSDATE, 'N', 'N', 2, 3);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs.director@gmail.com', 'õ����', 'baby.affairs.director', '12345', 'õ����.jpg', '01023452345', SYSDATE, 'N', 'N', 2, 2);



----3.�������̺��� : ���ߺ� ���� ������


INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'roun321@gmail.com', '�ο�', 'rounworks', '12345', '�ο�.png', '01057573354', TO_DATE('2023-05-11', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'tndls5304@naver.com', '�ּ���', 'ming2', '12345', '�ּ���.jpg', '01057055569', TO_DATE('2024-01-03', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'geuna@gmail.com', '�ڱپ�', 'geuna2', '12345', '�ڱپ�.jpg', '01037375656', TO_DATE('2023-02-22', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'yerin@gmail.com', '�ۿ���', 'yerin2', '12345', '�ۿ���.jpg', '01027586465', TO_DATE('2022-09-08', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'jisoo@gmail.com', '������', 'jisoo2', '12345', '������.jpg', '01077582590', TO_DATE('2023-01-11', 'YYYY-MM-DD'), 'N', 'N', 3, 4);


INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev1@gmail.com', '����', 'baby.dev1', '12345', '����.jpg', '01011111111', TO_DATE('2022-12-22', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev2@gmail.com', '����', 'emp2_dev', '12345', '����.jpg', '01022222222', TO_DATE('2023-01-11', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev3@gmail.com', '�Ƹ�', 'baby.dev2', '12345', '�Ƹ�.jpg', '01033333333', TO_DATE('2023-02-21', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev4@gmail.com', '�Ӻ���', 'baby.dev4', '12345', '�Ӻ���.jpg', '01035789032', TO_DATE('2022-05-11', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev5@gmail.com', '�ſ���', 'baby.dev5', '12345', '�ſ���.jpg', '01055555555', TO_DATE('2021-08-01', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev.manager@gmail.com', '���̸�', 'baby.dev.manager', '12345', '���̸�.jpg', '01012341234', TO_DATE('2022-06-21', 'YYYY-MM-DD'), 'N', 'N', 3, 3);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev.director@gmail.com', '�����', 'baby.dev.director', '12345', '�����.jpg', '01023452345', TO_DATE('2020-11-20', 'YYYY-MM-DD'), 'N', 'N', 3, 2);


----4.�������̺��� : ������ ���� ������
INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales1@gmail.com', '������', 'baby.sales1', '12345', '������.jpg', '01011111111', TO_DATE('2023-07-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales2@gmail.com', '������', 'baby.sales2', '12345', '������.jpg', '01022222222', TO_DATE('2023-05-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales3@gmail.com', '�̵���', 'baby.sales3', '12345', '�̵���.jpg', '01033333333', TO_DATE('2023-01-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales4@gmail.com', '������', 'baby.sales4', '12345', '������.jpg', '01018768591', TO_DATE('2023-02-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales5@gmail.com', '������', 'baby.sales5', '12345', '������.jpg', '01055555555', TO_DATE('2023-06-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales.manager@gmail.com', '�۰�', 'baby.sales.manager', '12345', '�۰�.jpg', '01012341234', TO_DATE('2020-02-21', 'YYYY-MM-DD'), 'N', 'N', 4, 3);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales.director@gmail.com', '������', 'baby.sales.director', '12345', '������.jpg', '01023452345', TO_DATE('2010-06-21', 'YYYY-MM-DD'), 'N', 'N', 4, 2);


----5.�������̺��� : ���� ���̵�����
INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, RETIRE_YN, LOCK_YN, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human1@gmail.com', '��ȿ��', 'baby.CEO', '12345', '��ȿ��.jpg', '01088082111', TO_DATE('1999-02-07', 'YYYY-MM-DD'),  'N', 'N', 1);


commit;


--�پ�
---���÷� ����������
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
--�پ� ���� ���̵�����
INSERT INTO VEHICLE_TYPE (VHCL_TYPE_NO, NAME)
VALUES (SEQ_VEHICLE_TYPE.NEXTVAL , '�ҳ�Ÿ');

INSERT INTO VEHICLE_TYPE (VHCL_TYPE_NO, NAME)
VALUES (SEQ_VEHICLE_TYPE.NEXTVAL , '�ƹݶ�');

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
--�پ� �ѹ��� ����
INSERT INTO APPROVAL_STATUS (APPROVAL_NO ,APPROVAL_STATUS) VALUES (SEQ_APPROVAL_STATUS.NEXTVAL , '�̽���');

INSERT INTO APPROVAL_STATUS (APPROVAL_NO ,APPROVAL_STATUS) VALUES (SEQ_APPROVAL_STATUS.NEXTVAL , '����');

INSERT INTO APPROVAL_STATUS (APPROVAL_NO ,APPROVAL_STATUS) VALUES (SEQ_APPROVAL_STATUS.NEXTVAL , '����');

COMMIT;
-------------------------------------------------------------------------------------------------------------------------�ڡڡڱ������̺�(������)
--���1�� -----------------------------------------------------
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

--���2�� --------------------------------------------------------
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

COMMIT;

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)



