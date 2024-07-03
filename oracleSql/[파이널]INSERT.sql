--���� ��� ���⼭���� ����

INSERT INTO MESSENGER (MESSEN_NO, RECEIVER_EMP_NO, TITLE, CONTENT, SEND_DATE) VALUES (SEQ_MESSENGER.NEXTVAL, 2, '����', '����', SYSDATE);

--��� �ּҷ� ��ȸ(���� �ۼ��� ��)
SELECT
    E.NO
    , E.NAME
    , P.NAME AS positionNO
    , D.NAME AS deptNO
FROM EMPLOYEE E
JOIN POSITION P ON E.POSITION_NO = P.NO
JOIN DEPARTMENT D ON E.DEPT_NO = D.NO
;


--���� ���� ������ �����ȸ(����̸� ������)
SELECT 
    E.NAME
    , M.TITLE
    , M.CONTENT
    , M.SEND_DATE
FROM MESSENGER M
JOIN EMPLOYEE E 
ON M.SENDER_EMP_NO = E.NO
WHERE M.RECEIVER_EMP_NO = 1
ORDER BY M.SEND_DATE DESC
;

--���� ���� ������ �����ȸ(����̸� ������)
SELECT 
    E.NAME
    , M.TITLE
    , M.CONTENT
    , M.SEND_DATE
FROM MESSENGER M
JOIN EMPLOYEE E 
ON M.RECEIVER_EMP_NO = E.NO
WHERE M.SENDER_EMP_NO = 1
ORDER BY M.SEND_DATE DESC
;

--���� ����ȸ(����̸�-�޴»��/������� �� �� ������) 
SELECT 
    M.TITLE
    , E1.NAME AS senderName
    , E2. NAME As receiverName
    , M.SEND_DATE
    , M.CONTENT
FROM MESSENGER M 
JOIN EMPLOYEE E1 ON M.SENDER_EMP_NO = E1.NO
JOIN EMPLOYEE E2 ON M.RECEIVER_EMP_NO = E2.NO
WHERE M.MESSEN_NO = 1
;

--���� ��Ͽ��� �ش� ���� ��ȣ�� ����ȸ
--SELECT


--���� ��ü �����ȸ(����̸� ������)
SELECT 
    M.MESSEN_NO,
    '���� ����' AS MSG_TYPE, 
    E.NAME AS name,
    M.TITLE,
    M.CONTENT,
    M.SEND_DATE
FROM MESSENGER M
JOIN EMPLOYEE E 
ON M.RECEIVER_EMP_NO = E.NO
WHERE M.SENDER_EMP_NO = 1

UNION ALL

SELECT 
    M.MESSEN_NO,
    '���� ����' AS MSG_TYPE, 
    E.NAME AS name,
    M.TITLE,
    M.CONTENT,
    M.SEND_DATE
FROM MESSENGER M
JOIN EMPLOYEE E 
ON M.SENDER_EMP_NO = E.NO
WHERE M.RECEIVER_EMP_NO = 1

ORDER BY SEND_DATE DESC;

--Ư�� ���� ��ȸ�ϱ� - ������ ������ ����� ������ �о�� ����ó���ǵ��� �����ϱ� ����.  
SELECT 
    MESSEN_NO 
    , SENDER_EMP_NO
    , RECEIVER_EMP_NO 
    , TITLE
    , CONTENT
    , SEND_DATE 
FROM MESSENGER WHERE MESSEN_NO = 1
;

--���� ���� ���� ��� ��ȸ(�ֽż�) 
SELECT 
    E.NAME
    , M.TITLE
    , M.CONTENT
    , M.SEND_DATE 
FROM MESSENGER M 
JOIN EMPLOYEE E 
ON M.SENDER_EMP_NO = E.NO 
WHERE M.READ_YN = 'N' AND M.RECEIVER_EMP_NO = 1
ORDER BY M.SEND_DATE DESC
;

--���� ����/ �� ����
UPDATE MESSENGER
SET READ_YN = 'Y'
WHERE MESSEN_NO = 1;


--�߿� ���� ��� ��ȸ(�ֽż�)
SELECT 
    E.NAME
    , M.TITLE
    , M.CONTENT
    , M.SEND_DATE 
FROM MESSENGER M 
JOIN EMPLOYEE E 
ON M.SENDER_EMP_NO = E.NO 
WHERE M.IMPORTANT_YN = 'Y' AND M.RECEIVER_EMP_NO = 1

UNION ALL

SELECT 
    E.NAME
    , M.TITLE
    , M.CONTENT
    , M.SEND_DATE 
FROM MESSENGER M 
JOIN EMPLOYEE E 
ON M.RECEIVER_EMP_NO = E.NO 
WHERE M.IMPORTANT_YN = 'Y' AND M.SENDER_EMP_NO = 1 

ORDER BY SEND_DATE DESC
;

--���� �߿�/ �� �߿�
UPDATE MESSENGER
SET IMPORTANT_YN = 'Y'
WHERE MESSEN_NO = 1;

--�˻���� - ��� �̸����� �˻� 



----------------------------------------------------------------------------------------------------------------------------------

--���°��� ��� ���⼭���� ����

--��� ��� (INSERT �ϱ�)
INSERT INTO ATTEND (
    ATTEND_NO
    , EMP_NO
    , START_TIME
) 
VALUES (
    SEQ_ATTEND.NEXTVAL
    , 2
    , SYSDATE
);

--���Ƿ� �������̺� ������ �߰�
--INSERT INTO ATTEND (
--    ATTEND_NO,
--    EMP_NO,
--    START_TIME,
--    END_TIME
--) 
--VALUES (
--    SEQ_ATTEND.NEXTVAL,
--    1,
--    TO_TIMESTAMP('2024-06-28 19:47:54.000000000', 'YYYY-MM-DD HH24:MI:SS.FF9'),
--    TO_TIMESTAMP('2024-06-28 19:50:54.000000000', 'YYYY-MM-DD HH24:MI:SS.FF9')
--);
--COMMIT;

--Ȩ ȭ�鿡 ������� �� ����� ���� ���� (SUBSTR ����ؼ� �ð� �ڸ���)
--�ٵ� �� ������ session�� postionNo�� deptNo ����༭(���� ������) ��� �� ��. 
SELECT 
    E.NAME
    ,E.PROFILE
    ,P.NAME AS positionNo
    ,D.NAME AS deptNo
    ,SUBSTR(TO_CHAR(A.START_TIME, 'RR/MM/DD HH24:MI:SS'), 1, 19) AS START_TIME
    ,SUBSTR(TO_CHAR(A.END_TIME, 'RR/MM/DD HH24:MI:SS'), 1, 19) AS END_TIME
FROM EMPLOYEE E
JOIN DEPARTMENT D ON D.NO = E.DEPT_NO
JOIN POSITION P ON P.NO = E.POSITION_NO
JOIN ATTEND A ON A.EMP_NO = E.NO
;

--����� ���� ���� (SUBSTR ����ؼ� �ð� �ڸ���) - ATTEND ���̺� ����ؼ�
--���� ������
--SELECT 
--    ATTEND_NO
--    ,EMP_NO
--    ,SUBSTR(TO_CHAR(START_TIME, 'RR/MM/DD HH24:MI:SS'), 1, 19) AS START_TIME
--    ,SUBSTR(TO_CHAR(END_TIME, 'RR/MM/DD HH24:MI:SS'), 1, 19) AS END_TIME 
--FROM ATTEND
--WHERE EMP_NO = 1
--;
--���� �� ������ 
--DB�� (������ �����ȣ��) ���� ���� �� ���� ���� �� �߰� �ذ�! - FETCH FIRST 1 ROWS ONLY (�׻� �ϳ��� ���� ����) 
SELECT ATTEND_NO
    , EMP_NO
    , SUBSTR(TO_CHAR(START_TIME, 'RR/MM/DD HH24:MI:SS'), 1, 19) AS START_TIME
    , SUBSTR(TO_CHAR(END_TIME, 'RR/MM/DD HH24:MI:SS'), 1, 19) AS END_TIME 
FROM ATTEND 
WHERE EMP_NO = 1 
ORDER BY START_TIME DESC 
FETCH FIRST 1 ROWS ONLY
;

--��� ��� (UPDATE �ϱ�)
--���� ������
--UPDATE ATTEND
--SET END_TIME = CURRENT_TIMESTAMP
--WHERE EMP_NO = 1;
--���� �� ������
--���� �ֱ� ����� ��ٽð��� UPDATE
UPDATE ATTEND 
SET END_TIME = CURRENT_TIMESTAMP 
WHERE ATTEND_NO = (
        SELECT ATTEND_NO 
        FROM ATTEND 
        WHERE EMP_NO = 1 
        ORDER BY START_TIME DESC 
        FETCH FIRST 1 ROWS ONLY
);

--��� ���� Ȯ���ϱ� (�̹� ����� ���¶�� 0�� ��ȯ) - alreadyStart
SELECT COUNT(*)
FROM ATTEND
WHERE EMP_NO = 2
AND START_TIME IS NOT NULL
AND END_TIME IS NULL
AND TO_CHAR(START_TIME, 'YYYY-MM-DD') = TO_CHAR(SYSDATE, 'YYYY-MM-DD')
;

--���� ����� ���� Ȯ���ϱ� - alreadyAttend
SELECT COUNT(*) 
FROM ATTEND 
WHERE EMP_NO = 1 
AND TO_CHAR(START_TIME, 'YYYY-MM-DD') = TO_CHAR(SYSDATE, 'YYYY-MM-DD') 
AND END_TIME IS NOT NULL
;

--��� ���� Ȯ���ϱ� 
--SELECT COUNT(*)
--FROM ATTEND
--WHERE EMP_NO = 2
--AND START_TIME IS NOT NULL
--AND END_TIME IS NULL
--AND TO_CHAR(START_TIME, 'YYYY-MM-DD') = TO_CHAR(SYSDATE, 'YYYY-MM-DD')
--;

--���� ����� ��¥ �� �ð� Ȯ���ϱ� (����Ʈ��)
SELECT
    ATTEND_NO
    ,EMP_NO
    ,START_TIME
    ,END_TIME
FROM ATTEND
WHERE EMP_NO = 2
ORDER BY START_TIME DESC
;

--���� ���������� ����Ͽ� ����Ʈ ���(1,2,3,4����.._WEEK_NUM) (����Ʈ��)
--�ٵ� ���⿡�� ���װ�, �޷��� ������ �ڵ����� ������Ʈ�ϴ� ���� �ƴϱ� ������ 
--1.���� ������� ���� ��¥���� �������� 1�������� .... n�������� ����. 
--2.�߰��� n������ �ش��ϴ� ��¥�� ���� ���, n-1������ ���ȴ�. 
--(��: 3������ �ش��ϴ� ��¥�� ����. �׷��� ���� 4������ �ش��ϴ� ��¥�� DB�� 3������ ������.)
WITH WEEK_CALCUL AS (
    SELECT
        TRUNC(START_TIME, 'IW') AS WEEK,
        ATTEND_NO,
        EMP_NO,
        START_TIME,
        END_TIME,
        DENSE_RANK() OVER (ORDER BY TRUNC(START_TIME, 'IW')) AS weekNum
    FROM ATTEND
    WHERE EMP_NO = 1 --�� �� �ٲ㼭 ����Ʈ ����ϱ� 
)
SELECT
    WEEK,
    weekNum,
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
FROM WEEK_CALCUL
WHERE weekNum = 1 --�� �� �ٲ㼭 ����Ʈ ����ϱ� 
ORDER BY WEEK, START_TIME;

