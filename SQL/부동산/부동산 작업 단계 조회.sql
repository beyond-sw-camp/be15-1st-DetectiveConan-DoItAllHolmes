-- TS_025. 부동산 작업 단계 조회
-- 상담 중인 비즈니스 업체 조회
SELECT c.business_user_id
FROM business_user b
JOIN counsel c
ON b.user_id = c.business_user_id;
-- 특정 bussiness_user_id이고 특정 상담 상태 조회
SELECT counsel_status
FROM counsel
WHERE counsel_id = 7 and business_user_id = 3