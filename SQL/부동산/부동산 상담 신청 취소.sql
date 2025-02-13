-- TS_023. 부동산 상담 신청 취소
SELECT user_id, counsel_id FROM counsel
JOIN user
USING(user_id);

-- 이용자의 특정 상담 삭제
DELETE FROM counsel
WHERE user_id = 10 AND counsel_id = 11;

SELECT * FROM counsel;