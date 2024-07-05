--쪽지 기능 여기서부터 시작

INSERT INTO MESSENGER (MESSEN_NO, RECEIVER_EMP_NO, TITLE, CONTENT, SEND_DATE) VALUES (SEQ_MESSENGER.NEXTVAL, 2, '제목', '내용', SYSDATE);

--사원 주소록 조회(쪽지 작성할 때)
SELECT
    E.NO
    , E.NAME
    , P.NAME AS positionNO
    , D.NAME AS deptNO
FROM EMPLOYEE E
JOIN POSITION P ON E.POSITION_NO = P.NO
JOIN DEPARTMENT D ON E.DEPT_NO = D.NO
;


--쪽지 받은 쪽지함 목록조회(사원이름 나오게)
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

--쪽지 보낸 쪽지함 목록조회(사원이름 나오게)
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

--쪽지 상세조회(사원이름-받는사람/보낸사람 둘 다 나오게) 
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

--쪽지 목록에서 해당 쪽지 번호로 상세조회
--SELECT


--쪽지 전체 목록조회(사원이름 나오게)
SELECT 
    M.MESSEN_NO,
    '받은 쪽지' AS MSG_TYPE, 
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
    '보낸 쪽지' AS MSG_TYPE, 
    E.NAME AS name,
    M.TITLE,
    M.CONTENT,
    M.SEND_DATE
FROM MESSENGER M
JOIN EMPLOYEE E 
ON M.SENDER_EMP_NO = E.NO
WHERE M.RECEIVER_EMP_NO = 1

ORDER BY SEND_DATE DESC;

--특정 쪽지 조회하기 - 쪽지를 수신한 사람이 쪽지를 읽어야 읽음처리되도록 설정하기 위함.  
SELECT 
    MESSEN_NO 
    , SENDER_EMP_NO
    , RECEIVER_EMP_NO 
    , TITLE
    , CONTENT
    , SEND_DATE 
FROM MESSENGER WHERE MESSEN_NO = 1
;

--읽지 않은 쪽지 목록 조회(최신순) 
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

--쪽지 읽음/ 안 읽음
UPDATE MESSENGER
SET READ_YN = 'Y'
WHERE MESSEN_NO = 1;


--중요 쪽지 목록 조회(최신순)
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

--쪽지 중요/ 안 중요
UPDATE MESSENGER
SET IMPORTANT_YN = 'Y'
WHERE MESSEN_NO = 1;

--검색기능 - 사원 이름으로 검색 



----------------------------------------------------------------------------------------------------------------------------------

--근태관리 기능 여기서부터 시작

--출근 찍기 (INSERT 하기)
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

--임의로 근태테이블 데이터 추가
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

--홈 화면에 사원정보 및 출퇴근 정보 띄우기 (SUBSTR 사용해서 시간 자르기)
--근데 이 쿼리문 session에 postionNo랑 deptNo 담아줘서(이후 변경함) 사용 안 함. 
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

--출퇴근 정보 띄우기 (SUBSTR 사용해서 시간 자르기) - ATTEND 테이블만 사용해서
--기존 쿼리문
--SELECT 
--    ATTEND_NO
--    ,EMP_NO
--    ,SUBSTR(TO_CHAR(START_TIME, 'RR/MM/DD HH24:MI:SS'), 1, 19) AS START_TIME
--    ,SUBSTR(TO_CHAR(END_TIME, 'RR/MM/DD HH24:MI:SS'), 1, 19) AS END_TIME 
--FROM ATTEND
--WHERE EMP_NO = 1
--;
--수정 후 쿼리문 
--DB에 (동일한 사원번호로) 값이 여러 개 들어가도 에러 안 뜨게 해결! - FETCH FIRST 1 ROWS ONLY (항상 하나의 값만 리턴) 
SELECT ATTEND_NO
    , EMP_NO
    , SUBSTR(TO_CHAR(START_TIME, 'RR/MM/DD HH24:MI:SS'), 1, 19) AS START_TIME
    , SUBSTR(TO_CHAR(END_TIME, 'RR/MM/DD HH24:MI:SS'), 1, 19) AS END_TIME 
FROM ATTEND 
WHERE EMP_NO = 1 
ORDER BY START_TIME DESC 
FETCH FIRST 1 ROWS ONLY
;

--퇴근 찍기 (UPDATE 하기)
--기존 쿼리문
--UPDATE ATTEND
--SET END_TIME = CURRENT_TIMESTAMP
--WHERE EMP_NO = 1;
--수정 후 쿼리문
--가장 최근 기록의 퇴근시간을 UPDATE
UPDATE ATTEND 
SET END_TIME = CURRENT_TIMESTAMP 
WHERE ATTEND_NO = (
        SELECT ATTEND_NO 
        FROM ATTEND 
        WHERE EMP_NO = 1 
        ORDER BY START_TIME DESC 
        FETCH FIRST 1 ROWS ONLY
);

--출근 상태 확인하기 (이미 출근한 상태라면 0을 반환) - alreadyStart()
SELECT COUNT(*)
FROM ATTEND
WHERE EMP_NO = 2
AND START_TIME IS NOT NULL
AND END_TIME IS NULL
AND TO_CHAR(START_TIME, 'YYYY-MM-DD') = TO_CHAR(SYSDATE, 'YYYY-MM-DD')
;

--오늘 출퇴근 상태 확인하기 - alreadyAttend()
SELECT COUNT(*) 
FROM ATTEND 
WHERE EMP_NO = 1 
AND TO_CHAR(START_TIME, 'YYYY-MM-DD') = TO_CHAR(SYSDATE, 'YYYY-MM-DD') 
AND END_TIME IS NOT NULL
;

--퇴근 상태 확인하기 
--SELECT COUNT(*)
--FROM ATTEND
--WHERE EMP_NO = 2
--AND START_TIME IS NOT NULL
--AND END_TIME IS NULL
--AND TO_CHAR(START_TIME, 'YYYY-MM-DD') = TO_CHAR(SYSDATE, 'YYYY-MM-DD')
--;

--개인 출퇴근 날짜 및 시간 확인하기 (리스트용)
SELECT
    ATTEND_NO
    ,EMP_NO
    ,START_TIME
    ,END_TIME
FROM ATTEND
WHERE EMP_NO = 2
ORDER BY START_TIME DESC
;

--이해가 꼭 필요한 쿼리문
--1.특정 사원의 출퇴근 기록을 조회하여 2.기록을 월별로 나누고 3.월 내에서 몇 번째 주에 해당하는지 계산하고 4.총 시간(퇴근-출근)을 계산하여(시간/분 따로) 5.결과를 정렬해 준다. (나의 근태기록 리스트용)
--결과에서 x시간 x분으로 나타내기 위해서 계산하여 아래 TOTAL_WORK와 같이 나타낸다. 
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
            WHERE EMP_NO = 1 --사원번호로 알아서 바꾸기 
)
SELECT
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME,
    MONTH_NUM,
    WEEK_IN_MONTH AS WEEK_NUM,
    FLOOR(TOTAL_HOUR) || '시간 ' || ABS(ROUND((TOTAL_MINUTES - FLOOR(TOTAL_HOUR) * 60))) || '분' AS TOTAL_WORK
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
