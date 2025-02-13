-- TS_082 회원 차단
-- 신고당한 회원을 차단한다.
UPDATE user SET block = 'Y' WHERE user_id = 5;