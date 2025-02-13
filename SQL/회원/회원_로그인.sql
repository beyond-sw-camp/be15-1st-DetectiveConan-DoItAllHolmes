-- TS_001 로그인
-- 	1-1 성공
SELECT user_id, user_name, user_login_id, role
FROM user
WHERE user_login_id = 'kimminjun'  
AND user_login_password = 'password1!';  
--  	1-2 실패

SELECT user_id, user_name, user_login_id, role
FROM user
WHERE user_login_id = 'kimminjun'  
AND user_login_password = 'password1';