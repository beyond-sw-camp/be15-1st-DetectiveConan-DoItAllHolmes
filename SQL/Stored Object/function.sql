-- function
-- 후기(review)의 평균 길이 계산 - 함수
DELIMITER $$

CREATE FUNCTION GetAverageReviewLength() RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE avg_length DECIMAL(10,2);
    SELECT AVG(CHAR_LENGTH(review_contents)) INTO avg_length FROM review;
    RETURN avg_length;
END$$

DELIMITER ;


-- 특정 사용자의 후기 개수 조회 - 함수
DELIMITER $$

CREATE FUNCTION GetUserReviewCount(userId INT) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE count_reviews INT;
    SELECT COUNT(*) INTO count_reviews FROM review WHERE user_id = userId;
    RETURN count_reviews;
END$$

DELIMITER ;


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