-- 후기(review) 작성 시 상담(counsel) 상태 확인 - 트리거
DELIMITER $$

CREATE TRIGGER check_counsel_status_before_insert
BEFORE INSERT ON review
FOR EACH ROW
BEGIN
    DECLARE status ENUM('상담신청', '상담중', '작업완료');
    
    -- 상담 상태 조회
    SELECT counsel_status INTO status 
    FROM counsel 
    WHERE counsel_id = NEW.counsel_id;
    
    -- 상담 상태가 '작업완료'가 아닐 경우 에러 발생
    IF status != '작업완료' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = '후기는 상담이 작업완료 상태일 때만 작성할 수 있습니다.';
    END IF;
END$$

DELIMITER ;


-- 회원 탈퇴 시 관련 데이터 정리 - 트리거
DELIMITER $$

CREATE TRIGGER deactivate_user_data
AFTER UPDATE ON user
FOR EACH ROW
BEGIN
    IF NEW.is_delete = 'Y' THEN
        UPDATE likes SET is_delete = 'Y' WHERE user_id = NEW.user_id;
        UPDATE business_user SET is_delete = 'Y' WHERE user_id = NEW.user_id;
        UPDATE portfolio SET is_delete = 'Y' WHERE user_id = NEW.user_id;
        
    END IF;
END$$

DELIMITER ;


-- 게시글(board) 삭제 시 관련 댓글(board_comments) 자동 삭제 - 트리거
DELIMITER $$

CREATE TRIGGER delete_board_comments
AFTER DELETE ON board
FOR EACH ROW
BEGIN
    DELETE FROM board_comments WHERE board_id = OLD.board_id;
END$$

DELIMITER ;


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




