-- TS_011. 부동산 업체 정보 작성


INSERT INTO business_user (
    user_id,
    business_number,
    doc,
    role,
    company_name,
    company_phone,
    company_location,
    is_delete
)
VALUES (
    6,                                   
    '123-45-67890',                      
    '사업자 등록증 사본',                 
    'house',                           
    '세종 인테리어',                       
    '010-1234-5678',                    
    '서울시 강남구 테헤란로 123',          
    'N'                                    -- is_delete (기본값: 'N')
);
-- 사업자 등록 후 인증 받으면 user 테이블의 해당 회원번호를 가진 행에서 role 값 business로 변경
UPDATE user
SET ROLE = "business"
WHERE user_id = 6

SELECT * FROM user
WHERE user_id = 6;

SELECT * FROM business_user
WHERE user_id = 6;
