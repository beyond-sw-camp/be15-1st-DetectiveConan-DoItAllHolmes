-- TS_081 사업자 정보 삭제
-- 사업자 정보를 완전히 삭제하기 전 soft delete로 is_delete를 'Y'로 업데이트한다.
UPDATE business_user
SET is_delete = 'Y'
WHERE user_id = 3;