
---------------------------------------------------------------------------------------------------------------------�ڡڡڰ����� ���̺�(����)

-----------------------------------------------------------------------������ ������ �޴� ���̺�
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (1, '���� ����', '/admin/');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (2, '�ű� ��� ���', '/admin/insert_emp');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (3, '��� ����', '/admin/list_emp');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (4, '�Խ��� ī�װ� ����', '/admin/');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (5, '�Խ��� �� ����', '/admin/');
INSERT INTO ADMIN_PAGE_MENU (NO, NAME, URL) VALUES (6, '�������� ����', '/admin/');


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
INSERT INTO ADMIN_PAGE_MENU_AUTHORITY (ADMIN_PAGE_MENU_NO, ADMIN_AUTHORITY_NO,SELECT_YN,INSERT_YN , MODIFY_YN , REMOVE_YN) VALUES (6, 2,'Y','Y','Y','N');



-----------------------------------------------------------------------������ ���� ���̺�(��й�ȣ�� '12345')
INSERT INTO ADMIN (NO, ID, PWD, ADMIN_AUTHORITY_NO) VALUES (SEQ_ADMIN.NEXTVAL, 'superAdmin', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', 1);
INSERT INTO ADMIN (NO, ID, PWD, ADMIN_AUTHORITY_NO) VALUES (SEQ_ADMIN.NEXTVAL, 'subAdmin', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', 2);






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
INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human1@gmail.com', '�Ѽ���', 'baby.human1', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '�Ѽ���.jpg', '01023117875', TO_DATE('2023-09-17', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human2@gmail.com', '����', 'baby.human2', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '����.jpg', '01022222452', TO_DATE('2024-01-10', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human3@gmail.com', '����', 'baby.human3', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '����.jpg', '01033333333', TO_DATE('2023-12-01', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human4@gmail.com', 'ī����', 'baby.human4', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', 'ī����.jpg', '01039490877', TO_DATE('2023-05-11', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human5@gmail.com', '����', 'baby.human5', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '����.jpg', '01055555555', TO_DATE('2024-03-21', 'YYYY-MM-DD'), 'N', 'N', 1, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human.manager@gmail.com', '������', 'baby.human.manager', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '������.jpg', '01012341234', TO_DATE('2020-08-21', 'YYYY-MM-DD'), 'N', 'N', 1, 3);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human.director@gmail.com', '�ѿ���', 'baby.human.director', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '�ѿ���.jpg', '01023452345', TO_DATE('2023-03-03', 'YYYY-MM-DD'), 'N', 'N', 1, 2);


----2.�������̺��� : �ѹ��� ���� ������
INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs1@gmail.com', '�̳���', 'baby.affairs1', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '�̳���.jpg', '01011236111', TO_DATE('2022-08-22', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs2@gmail.com', '�ں���', 'baby.affairs2', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '�ں���.jpg', '01022222222', TO_DATE('2023-03-07', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs3@gmail.com', 'ī����', 'baby.affairs3', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', 'ī����.jpg', '01033333333', TO_DATE('2023-09-03', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs4@gmail.com', '���¸�', 'baby.affairs4', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '���¸�.jpg', '01023239090', TO_DATE('2023-03-09', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs5@gmail.com', '������', 'baby.affairs5', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '������.jpg', '01055555552', TO_DATE('2023-07-16', 'YYYY-MM-DD'), 'N', 'N', 2, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs.manager@gmail.com', '������', 'baby.affairs.manager', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '������.jpg', '01012341234', SYSDATE, 'N', 'N', 2, 3);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.affairs.director@gmail.com', 'õ����', 'baby.affairs.director', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', 'õ����.jpg', '01023452345', SYSDATE, 'N', 'N', 2, 2);



----3.�������̺��� : ���ߺ� ���� ������
INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev1@gmail.com', '����', 'baby.dev1', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '����.jpg', '01011111111', TO_DATE('2022-12-22', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev2@gmail.com', '����', 'emp2_dev', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '����.jpg', '01022222222', TO_DATE('2023-01-11', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev3@gmail.com', '�Ƹ�', 'baby.dev2', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '�Ƹ�.jpg', '01033333333', TO_DATE('2023-02-21', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev4@gmail.com', '�Ӻ���', 'baby.dev4', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '�Ӻ���.jpg', '01035789032', TO_DATE('2022-05-11', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev5@gmail.com', '�ſ���', 'baby.dev5', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '�ſ���.jpg', '01055555555', TO_DATE('2021-08-01', 'YYYY-MM-DD'), 'N', 'N', 3, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev.manager@gmail.com', '���̸�', 'baby.dev.manager', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '���̸�.jpg', '01012341234', TO_DATE('2022-06-21', 'YYYY-MM-DD'), 'N', 'N', 3, 3);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.dev.director@gmail.com', '�����', 'baby.dev.director', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '�����.jpg', '01023452345', TO_DATE('2020-11-20', 'YYYY-MM-DD'), 'N', 'N', 3, 2);


----4.�������̺��� : ������ ���� ������
INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales1@gmail.com', '������', 'baby.sales1', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '������.jpg', '01011111111', TO_DATE('2023-07-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales2@gmail.com', '������', 'baby.sales2', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '������.jpg', '01022222222', TO_DATE('2023-05-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales3@gmail.com', '�̵���', 'baby.sales3', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '�̵���.jpg', '01033333333', TO_DATE('2023-01-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales4@gmail.com', '������', 'baby.sales4', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '������.jpg', '01018768591', TO_DATE('2023-02-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales5@gmail.com', '������', 'baby.sales5', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '������.jpg', '01055555555', TO_DATE('2023-06-21', 'YYYY-MM-DD'), 'N', 'N', 4, 4);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales.manager@gmail.com', '�۰�', 'baby.sales.manager', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '�۰�.jpg', '01012341234', TO_DATE('2020-02-21', 'YYYY-MM-DD'), 'N', 'N', 4, 3);

INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.sales.director@gmail.com', '������', 'baby.sales.director', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '������.jpg', '01023452345', TO_DATE('2010-06-21', 'YYYY-MM-DD'), 'N', 'N', 4, 2);


----5.�������̺��� : ���� ���̵�����
INSERT INTO EMPLOYEE (NO, EMAIL, NAME, ID, PWD, PROFILE, PHONE, HIRE_DATE, ENT_YN, LOCK_YN, DEPT_NO, POSITION_NO)
VALUES (SEQ_EMPLOYEE.NEXTVAL, 'baby.human1@gmail.com', '��ȿ��', 'baby.CEO', '$2a$10$OAPVtkEugfw2Xwc2QR59s.loFms9sR71rGMP8SfLKkXuhVHPFi5py', '��ȿ��.jpg', '01088082111', TO_DATE('1999-02-07', 'YYYY-MM-DD'),  'N', 'N', 1, 1);


commit;



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

-------------------------------------------------------------------------------------------------------------------------�ڡڡ����̺��(���� �̸�)