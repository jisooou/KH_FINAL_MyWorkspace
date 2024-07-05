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
    M.MESSEN_NO
    , E.NAME
    , M.TITLE
    , M.CONTENT
    , M.SEND_DATE 
FROM MESSENGER M 
JOIN EMPLOYEE E 
ON M.SENDER_EMP_NO = E.NO 
WHERE M.IMPORTANT_YN = 'Y' AND M.RECEIVER_EMP_NO = 1

UNION ALL

SELECT 
    M.MESSEN_NO
    , E.NAME
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
--    2,
--    TO_TIMESTAMP('2024-07-02 19:47:54.000000000', 'YYYY-MM-DD HH24:MI:SS.FF9'),
--    TO_TIMESTAMP('2024-07-02 19:50:54.000000000', 'YYYY-MM-DD HH24:MI:SS.FF9')
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

--��� ���� Ȯ���ϱ� (�̹� ����� ���¶�� 0�� ��ȯ) - alreadyStart()
SELECT COUNT(*)
FROM ATTEND
WHERE EMP_NO = 2
AND START_TIME IS NOT NULL
AND END_TIME IS NULL
AND TO_CHAR(START_TIME, 'YYYY-MM-DD') = TO_CHAR(SYSDATE, 'YYYY-MM-DD')
;

--���� ����� ���� Ȯ���ϱ� - alreadyAttend()
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

--���ذ� �� �ʿ��� ������
--1.Ư�� ����� ����� ����� ��ȸ�Ͽ� 2.����� ������ ������ 3.�� ������ �� ��° �ֿ� �ش��ϴ��� ����ϰ� 4.�� �ð�(���-���)�� ����Ͽ�(�ð�/�� ����) 5.����� ������ �ش�. (���� ���±�� ����Ʈ��)
--������� x�ð� x������ ��Ÿ���� ���ؼ� ����Ͽ� �Ʒ� TOTAL_WORK�� ���� ��Ÿ����. 
WITH WEEK_CALCUL AS (
            SELECT
                ATTEND_NO,
                EMP_NO,
                START_TIME,
                END_TIME,
                TO_CHAR(START_TIME, 'MM') AS MONTH_NUM,
                CEIL(EXTRACT(DAY FROM START_TIME) / 7) AS WEEK_IN_MONTH,
                ROUND(
                    (TO_DATE(TO_CHAR(END_TIME, 'HH24:MI:SS'), 'HH24:MI:SS') -
                     TO_DATE(TO_CHAR(START_TIME, 'HH24:MI:SS'), 'HH24:MI:SS')) * 24 
                ) AS TOTAL_HOUR,
                ROUND(
                    (TO_DATE(TO_CHAR(END_TIME, 'HH24:MI:SS'), 'HH24:MI:SS') -
                     TO_DATE(TO_CHAR(START_TIME, 'HH24:MI:SS'), 'HH24:MI:SS')) * 24 * 60
                ) AS TOTAL_MINUTES
            FROM ATTEND
            WHERE EMP_NO = 1 --�����ȣ�� �˾Ƽ� �ٲٱ� 
)
SELECT
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME,
    MONTH_NUM,
    WEEK_IN_MONTH AS WEEK_NUM,
    FLOOR(TOTAL_HOUR) || '�ð� ' || ABS(ROUND((TOTAL_MINUTES - FLOOR(TOTAL_HOUR) * 60))) || '��' AS TOTAL_WORK
FROM WEEK_CALCUL
ORDER BY MONTH_NUM, WEEK_NUM, START_TIME
;



------------------------------------------------------------------
--GPT
SELECT
    MESSEN_NO AS messenNo,
    SENDER_EMP_NO AS senderEmpNo,
    RECEIVER_EMP_NO AS receiverEmpNo,
    TITLE,
    CONTENT,
    SEND_DATE AS sendDate,
    IMPORTANT_YN AS importantYn
FROM
    MESSENGER
WHERE
    (SENDER_EMP_NO = 2 OR RECEIVER_EMP_NO = 2) 
    AND IMPORTANT_YN = 'Y'
ORDER BY
    SEND_DATE DESC;


UPDATE messenger
SET IMPORTANT_YN = 'Y'
WHERE MESSEN_NO = 1 
AND (SENDER_EMP_NO = 2 OR receiver_emp_no = 28);
