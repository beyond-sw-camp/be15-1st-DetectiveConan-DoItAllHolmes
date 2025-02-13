-- TS_024. 부동산 작업 단계 수정
-- 특정 사업자 회원 ID가 있는지 확인
SELECT * FROM counsel
WHERE business_user_id = 1;

-- 특정 사업자, 상담에 대해 작업단계 수정
UPDATE counsel
SET counsel_status = "상담중"
WHERE business_user_id = 1 AND counsel_id = 1;

SELECT * FROM counsel
WHERE business_user_id = 1 AND counsel_id = 1;