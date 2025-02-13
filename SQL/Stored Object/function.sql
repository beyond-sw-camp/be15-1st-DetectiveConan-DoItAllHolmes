-- function
-- 월자별 가입 사용자 수 조회 - 함수
DELIMITER //

CREATE FUNCTION GetUserCountByMonth(target_month INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE user_count INT;
    
    SELECT COUNT(*) INTO user_count
    FROM user
    WHERE MONTH(user_created_at) = target_month;
    
    RETURN user_count;
END //

DELIMITER ;

SELECT 2 AS month, GetUserCountByMonth(2) AS user_count
UNION ALL SELECT 3 AS month, GetUserCountByMonth(3) AS user_count;


-- 월별 가입 사업자 수
DELIMITER //
CREATE FUNCTION GetBusinessUserCountByMonth(target_month INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE business_count INT;
    
    SELECT COUNT(*) INTO business_count
    FROM business_user
    JOIN user USING (user_id)
    WHERE user.role = 'business' AND MONTH(user_created_at) = target_month;
    
    RETURN business_count;
END //

DELIMITER ;

SELECT 2, GetBusinessUserCountByMonth(2)  AS business_user_count
UNION ALL SELECT 3 AS month, GetBusinessUserCountByMonth(3) AS business_user_count;








