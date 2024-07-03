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
--    1,
--    TO_TIMESTAMP('2024-06-28 19:47:54.000000000', 'YYYY-MM-DD HH24:MI:SS.FF9'),
--    TO_TIMESTAMP('2024-06-28 19:50:54.000000000', 'YYYY-MM-DD HH24:MI:SS.FF9')
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

--출근 상태 확인하기 (이미 출근한 상태라면 0을 반환) - alreadyStart
SELECT COUNT(*)
FROM ATTEND
WHERE EMP_NO = 2
AND START_TIME IS NOT NULL
AND END_TIME IS NULL
AND TO_CHAR(START_TIME, 'YYYY-MM-DD') = TO_CHAR(SYSDATE, 'YYYY-MM-DD')
;

--오늘 출퇴근 상태 확인하기 - alreadyAttend
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

--각각 몇주차인지 계산하여 리스트 출력(1,2,3,4주차.._WEEK_NUM) (리스트용)
--근데 여기에서 버그가, 달력의 주차를 자동으로 업데이트하는 것이 아니기 때문에 
--1.근태 출퇴근이 찍힌 날짜들을 기준으로 1주차부터 .... n주차까지 간다. 
--2.중간에 n주차에 해당하는 날짜가 없을 경우, n-1주차로 계산된다. 
--(예: 3주차에 해당하는 날짜가 없다. 그러면 실제 4주차에 해당하는 날짜가 DB에 3주차로 찍힌다.)
WITH WEEK_CALCUL AS (
    SELECT
        TRUNC(START_TIME, 'IW') AS WEEK,
        ATTEND_NO,
        EMP_NO,
        START_TIME,
        END_TIME,
        DENSE_RANK() OVER (ORDER BY TRUNC(START_TIME, 'IW')) AS weekNum
    FROM ATTEND
    WHERE EMP_NO = 1 --이 값 바꿔서 리스트 출력하기 
)
SELECT
    WEEK,
    weekNum,
    ATTEND_NO,
    EMP_NO,
    START_TIME,
    END_TIME
FROM WEEK_CALCUL
WHERE weekNum = 1 --이 값 바꿔서 리스트 출력하기 
ORDER BY WEEK, START_TIME;

