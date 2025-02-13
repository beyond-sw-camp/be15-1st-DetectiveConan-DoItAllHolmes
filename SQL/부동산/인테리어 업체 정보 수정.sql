-- TS_027. 인테리어 업체 정보 수정
SELECT *
FROM business_user
WHERE user_id = 7;

UPDATE business_user
        SET business_number = '11111-13244', doc = 'http:qqse',
		  role = 'interior', company_name = 'TH인테리어', company_phone = '010-6554-1234', company_location = '천왕'
        WHERE user_id = 7;


SELECT *
FROM business_user
WHERE user_id = 7;