-- TS_078 회원정보 삭제
-- 회원 정보를 완전히 삭제하기 전 soft delete로 is_delete를 'Y'로 업데이트한다.
UPDATE user
SET is_delete = 'Y'
WHERE user_id = 7;