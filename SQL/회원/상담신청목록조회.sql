-- TS_009. 상담 신청 목록 조회
-- 사용자 입장
SELECT * 
	FROM user
	WHERE ROLE = "user";
	
SELECT * 
	FROM counsel
	WHERE user_id = 11;
-- 사업장 입장
SELECT * 
	FROM user
	WHERE ROLE = "business";
SELECT *
FROM business_user
WHERE user_id = 11;

SELECT * 
	FROM counsel
	WHERE user_id = 11;