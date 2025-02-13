-- TS_014. 부동산 업체 정보 조회
-- 부동산인 업체 조회
SELECT user_id
FROM business_user
WHERE ROLE = "house";

-- 특정 부동산 정보 조회
SELECT *
FROM business_user
WHERE user_id = 1;
