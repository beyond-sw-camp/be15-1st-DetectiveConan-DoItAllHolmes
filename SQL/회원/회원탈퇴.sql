-- TS_008. 회원탈퇴
UPDATE user
SET is_delete = "Y"
WHERE user_id = 8;
SELECT * FROM user
WHERE user_id = 8;