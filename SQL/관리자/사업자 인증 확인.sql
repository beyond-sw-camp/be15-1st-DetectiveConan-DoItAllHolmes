-- TS_079 사업자 인증 확인
-- 사업자인 경우 관리자가 USER 테이블의 권한을 사업자 권한으로 바꿔준다.
UPDATE user a
JOIN business_user b ON a.user_id = b.user_id
SET a.role = 'business'
WHERE b.doc IS NOT NULL  
  AND a.role != 'business'  
  AND b.is_delete = 'N';