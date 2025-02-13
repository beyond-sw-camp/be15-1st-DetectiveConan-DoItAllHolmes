-- trigger

-- 후기(review) 작성 시 상담(counsel) 상태 확인 - 트리거
DELIMITER //

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
END//

DELIMITER ;


-- 회원 탈퇴 시 관련 데이터 정리 - 트리거
DELIMITER //

CREATE TRIGGER deactivate_user_data
AFTER UPDATE ON user
FOR EACH ROW
BEGIN
    IF NEW.is_delete = 'Y' THEN
        UPDATE likes SET is_delete = 'Y' WHERE user_id = NEW.user_id;
        UPDATE business_user SET is_delete = 'Y' WHERE user_id = NEW.user_id;
        UPDATE portfolio SET is_delete = 'Y' WHERE user_id = NEW.user_id;
        
    END IF;
END//

DELIMITER ;
UPDATE user
SET is_delete = "Y"
WHERE user_id = 3;
SELECT * FROM likes;
SELECT * FROM portfolio;
SELECT * FROM business_user;


-- 신고 횟수 초과 시 자동 상담 요청을 생성하는 트리거
DELIMITER //

CREATE TRIGGER trigger_auto_counsel
AFTER INSERT ON report
FOR EACH ROW
BEGIN
    DECLARE report_count INT;
    
    -- 해당 사용자의 신고 횟수 조회
    SELECT COUNT(*) INTO report_count FROM report WHERE reported_id = NEW.reported_id;

    -- 신고 횟수에 따라 상담(counsel) 요청 생성
    IF report_count = 5 THEN
        INSERT INTO counsel (counsel_status, user_id, business_user_id, counsel_content)
        VALUES ('상담중', NEW.reported_id, 999, '🚨 5회 신고 누적됨. 상담 필요.');
    ELSEIF report_count = 10 THEN
        INSERT INTO counsel (counsel_status, user_id, business_user_id, counsel_content)
        VALUES ('상담중', NEW.reported_id, 999, '⛔ 10회 이상 신고됨. 계정 정지 가능성 있음.');
    END IF;
END //

DELIMITER ;
INSERT INTO report
VALUES (NULL, "중복 게시글", 1, CURTIME(), 10, NULL, 9),
(NULL, "중복 게시글", 2, CURTIME(), 10, NULL, 9),
(NULL, "중복 게시글", 5, CURTIME(), 10, NULL, 9),
(NULL, "중복 게시글", 2, CURTIME(), 10, NULL, 9),
(NULL, "중복 게시글", 5, CURTIME(), 10, NULL, 9);

SELECT * FROM counsel;