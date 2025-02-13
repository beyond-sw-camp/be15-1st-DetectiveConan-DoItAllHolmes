-- TS_012. 부동산 업체 정보 수정
UPDATE business_user
SET 
    company_name = 'XYZ 부동산',
    company_phone = '010-9876-5432',
    company_location = '서울시 송파구 잠실동'
WHERE user_id = 6;


SELECT * FROM business_user;
