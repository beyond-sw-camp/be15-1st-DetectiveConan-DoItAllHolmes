-- TS_003. 회원 정보 수정
SELECT * FROM user
		WHERE user_id = (SELECT MAX(user_id) FROM user);
UPDATE user
SET 
    user_login_password = 'qwer1234',  -- 변경할 새로운 비밀번호
    user_phone = '010-3344-2223'           -- 변경할 새로운 전화번호
WHERE 
    user_login_id = 'qwerasdf'           -- 입력한 아이디
    AND user_login_password = 'asdf1234';  -- 기존 비밀번호가 일치하는지 확인
		-- 회원 정보 수정 성공
SELECT * FROM user
	WHERE user_id = (SELECT MAX(user_id) FROM user);