-- TS_013. 부동산 업체 정보 삭제
SELECT * FROM business_user
WHERE user_id = 6;

UPDATE business_user
SET is_delete = "Y"
WHERE user_id = 6;

SELECT * FROM business_user
WHERE user_id = 6;
