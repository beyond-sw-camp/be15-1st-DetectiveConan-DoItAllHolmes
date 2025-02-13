-- Procedure
-- 특정 사용자(user)가 작성한 모든 후기(review) 가져오기 - 프로시저
DELIMITER $$

CREATE PROCEDURE GetUserReviews(IN userId INT)
BEGIN
    SELECT * FROM review WHERE user_id = userId;
END$$

DELIMITER ;


-- 특정 상담(counsel) 상태 변경 - 프로시저
DELIMITER $$

CREATE PROCEDURE UpdateCounselStatus(IN counselId INT, IN newStatus ENUM('상담신청', '상담중', '작업완료'))
BEGIN
    UPDATE counsel SET counsel_status = newStatus WHERE counsel_id = counselId;
END$$

DELIMITER ;

-- 탑3 즐겨찾기(like) 조회 - 프로시저
DELIMITER //

CREATE PROCEDURE GetTop3Favorites()
BEGIN
    SELECT COUNT(*) AS count, portfolio_id
    FROM likes
    JOIN portfolio USING (portfolio_id)
    GROUP BY portfolio_id
    ORDER BY count DESC
    LIMIT 3;
END //

-- 탑3 게시판좋아요(board_like) 조회 - 프로시저
CREATE PROCEDURE GetTop3BoardLikes()
BEGIN
    SELECT COUNT(*) AS count, board_id
    FROM board_like
    JOIN board USING (board_id)
    GROUP BY board_id
    ORDER BY count DESC
    LIMIT 3;
END //

DELIMITER ;


-- 일자별 가입 사용자 수 조회 - 프로시저
DELIMITER //

CREATE PROCEDURE GetUserCountByDate(IN target_date DATE)
BEGIN
    SELECT COUNT(*) AS user_count
    FROM user
    WHERE DATE(user_created_at) = target_date;
END //

CREATE PROCEDURE GetBusinessUserCountByDate(IN target_date DATE)
BEGIN
    SELECT COUNT(*) AS business_user_count
    FROM business_user
    JOIN user USING (user_id)
    WHERE user.role = 'business' AND DATE(user_created_at) = target_date;
END //

DELIMITER ;




