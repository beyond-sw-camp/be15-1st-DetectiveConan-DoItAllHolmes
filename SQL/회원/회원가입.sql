-- TS_002. 회원가입
INSERT INTO user 
    (user_login_id, user_login_password, user_name, user_num,
	 user_phone, user_email, user_created_at,  block, ROLE) 
VALUES 
    ("qwerasdf", "asdf1234", "김오영", "001122-2190293", "010-2929-2020",
	 "dndk@naver.com", NOW(), 'N', 'user');

	-- 2.1 회원가입 성공 	
		SELECT * FROM user
		WHERE user_id = (SELECT MAX(user_id) FROM user);