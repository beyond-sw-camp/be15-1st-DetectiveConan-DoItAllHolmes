CREATE TABLE user
(
    user_id    INTEGER(10) NOT NULL AUTO_INCREMENT COMMENT '회원ID',
    user_name    VARCHAR(30) NOT NULL COMMENT '이름',
    user_phone    VARCHAR(30) NOT NULL COMMENT '전화번호',
    user_login_id    VARCHAR(255) NOT NULL COMMENT '아이디',
    user_login_password    VARCHAR(255) NOT NULL COMMENT '비밀번호',
    user_email    VARCHAR(100) NOT NULL COMMENT '이메일',
    user_num    VARCHAR(15) NOT NULL COMMENT '주민번호',
    user_created_at    DATETIME NOT NULL COMMENT '가입일자',
    block    ENUM('Y','N') DEFAULT 'N' NOT NULL COMMENT '차단여부',
    role    ENUM('user','admin','business') DEFAULT 'user' NOT NULL COMMENT '권한',
    is_delete    ENUM('Y','N') DEFAULT 'N' NOT NULL COMMENT '삭제여부',
 PRIMARY KEY ( user_id ),
 UNIQUE (user_id)  -- Primary key already enforces uniqueness, but explicitly adding unique for clarity
) COMMENT = '회원';

CREATE TABLE business_user
(
    user_id    INTEGER(10) NOT NULL COMMENT '사업자 회원ID',
    business_number    VARCHAR(30) NOT NULL COMMENT '사업자번호',
    doc    VARCHAR(255) NOT NULL COMMENT '증빙서류',
    role    ENUM('move','interior','house') NOT NULL COMMENT '업체구분',
    company_name    VARCHAR(50) NOT NULL COMMENT '업체 이름',
    company_phone    VARCHAR(30) NOT NULL COMMENT '업체 전화번호',
    company_location    VARCHAR(255) NOT NULL COMMENT '업체위치',
    is_delete    ENUM('Y','N') DEFAULT 'N' NOT NULL COMMENT '삭제여부',
 PRIMARY KEY ( user_id ),
 UNIQUE (user_id)  -- Primary key already enforces uniqueness
) COMMENT = '사업자 정보';

CREATE TABLE board
(
    board_id    INTEGER(10) NOT NULL AUTO_INCREMENT COMMENT '게시판ID',
    board_title    VARCHAR(255) NOT NULL COMMENT '제목',
    board_content    VARCHAR(255) NOT NULL COMMENT '내용',
    user_id    INTEGER(10) NOT NULL COMMENT '회원ID',
    board_image    TEXT COMMENT '이미지',
 PRIMARY KEY ( board_id ),
 UNIQUE (board_id)  -- Primary key already enforces uniqueness
) COMMENT = '게시판';

CREATE TABLE board_comments
(
    board_comments_id    INTEGER(10) NOT NULL AUTO_INCREMENT COMMENT '댓글ID',
    board_comments_content    VARCHAR(255) NOT NULL COMMENT '내용',
    board_id    INTEGER(10) NOT NULL COMMENT '게시판ID',
    user_id    INTEGER(10) NOT NULL COMMENT '회원ID',
    high_comment_id    INTEGER(10) COMMENT '상위댓글ID',
 PRIMARY KEY ( board_comments_id ),
 UNIQUE (board_comments_id)  -- Primary key already enforces uniqueness
) COMMENT = '댓글';

CREATE TABLE counsel
(
    counsel_id    INTEGER(10) NOT NULL AUTO_INCREMENT COMMENT '상담ID',
    counsel_status    ENUM('상담신청','상담중','작업완료') DEFAULT '상담신청' NOT NULL COMMENT '작업단계',
    user_id    INTEGER(10) NOT NULL COMMENT '회원ID',
    business_user_id    INTEGER(10) NOT NULL COMMENT '사업자 회원ID',
    counsel_content    VARCHAR(255) NOT NULL COMMENT '상담 내용',
    counsel_image    TEXT COMMENT '이미지',
 PRIMARY KEY ( counsel_id ),
 UNIQUE (counsel_id)  -- Primary key already enforces uniqueness
) COMMENT = '상담';

CREATE TABLE house_survey
(
    budget    BIGINT NOT NULL COMMENT '예산',
    deal_type    VARCHAR(30) NOT NULL COMMENT '매입 형태',
    house_location    VARCHAR(255) NOT NULL COMMENT '위치',
    floor_space    INTEGER(10) NOT NULL COMMENT '평수',
    stairs    INTEGER(10) NOT NULL COMMENT '층수',
    bathroom    INTEGER(10) NOT NULL COMMENT '욕실 수',
    comforts_info    TEXT(255) NOT NULL COMMENT '편의시설 정보',
    user_id    INTEGER(10) NOT NULL COMMENT '회원ID',
    room_count    INTEGER(2) NOT NULL COMMENT '방 갯수',
 PRIMARY KEY ( user_id ),
 UNIQUE (user_id)  -- Primary key already enforces uniqueness
) COMMENT = '매물 설문지';

CREATE TABLE portfolio
(
    portfolio_id    INTEGER(10) NOT NULL AUTO_INCREMENT COMMENT '소개글ID',
    user_id    INTEGER(10) NOT NULL COMMENT '사업자 회원ID',
    is_delete    ENUM('Y','N') DEFAULT 'N' NOT NULL COMMENT '삭제여부',
 PRIMARY KEY ( portfolio_id ),
 UNIQUE (portfolio_id)  -- Primary key already enforces uniqueness
) COMMENT = '업체별 게시글';

CREATE TABLE apt
(
    house_location    VARCHAR(255) NOT NULL COMMENT '위치',
    stairs    INTEGER(10) NOT NULL COMMENT '층수',
    bathroom    INTEGER(10) NOT NULL COMMENT '욕실수',
    room_count    INTEGER(2) NOT NULL COMMENT '방 갯수',
    price    BIGINT NOT NULL COMMENT '가격',
    floor_space    INTEGER(10) NOT NULL COMMENT '평 수',
    portfolio_id    INTEGER(10) NOT NULL COMMENT '소개글ID',
    house_image    TEXT COMMENT '이미지 파일',
 PRIMARY KEY ( portfolio_id ),
 UNIQUE (portfolio_id)  -- Primary key already enforces uniqueness
) COMMENT = '집 매물';

CREATE TABLE interior
(
    portfolio_id    INTEGER(10) NOT NULL COMMENT '소개글ID',
    interior_image    TEXT COMMENT '이미지파일',
    concept    VARCHAR(255) NOT NULL COMMENT '컨셉',
    interior_house_type    ENUM('원룸','투룸','아파트','오피스텔','전원주택') NOT NULL COMMENT '주거 형태',
    interior_house_size    INTEGER(10) NOT NULL COMMENT '평 수',
    interior_budget    INTEGER(11) NOT NULL COMMENT '인테리어 예산',
    construction_date    DATETIME NOT NULL COMMENT '소요기간',
 PRIMARY KEY ( portfolio_id ),
 UNIQUE (portfolio_id)  -- Primary key already enforces uniqueness
) COMMENT = '인테리어';

CREATE TABLE move
(
    portfolio_id    INTEGER(10) NOT NULL COMMENT '소개글ID',
    active_location    VARCHAR(255) NOT NULL COMMENT '활동 가능 지역',
    min_price    INTEGER(10) NOT NULL COMMENT '최저가',
    max_price    INTEGER(10) NOT NULL COMMENT '최고가',
    move_type    ENUM('포장','반포장') NOT NULL COMMENT '이사 형태 구분',
 PRIMARY KEY ( portfolio_id ),
 UNIQUE (portfolio_id)  -- Primary key already enforces uniqueness
) COMMENT = '이사';

CREATE TABLE move_survey
(
    user_id    INTEGER(10) NOT NULL COMMENT '회원ID',
    move_type    ENUM('포장','반포장') NOT NULL COMMENT '이사 형태 구분',
    from_address    VARCHAR(255) NOT NULL COMMENT '출발지 주소',
    to_address    VARCHAR(255) NOT NULL COMMENT '도착지 주소',
 PRIMARY KEY ( user_id ),
 UNIQUE (user_id)  -- Primary key already enforces uniqueness
) COMMENT = '이사 설문지';

CREATE TABLE interior_survey
(
    user_id    INTEGER(10) NOT NULL COMMENT '회원ID',
    interior_concept    VARCHAR(255) NOT NULL COMMENT '컨셉',
    interior_house_type    ENUM('원룸','투룸','아파트','오피스텔','전원주택') NOT NULL COMMENT '주거 형태',
    interior_house_size    INTEGER(10) NOT NULL COMMENT '평 수',
    interior_budget    INTEGER(11) NOT NULL COMMENT '인테리어 예산',
 PRIMARY KEY ( user_id ),
 UNIQUE (user_id)  -- Primary key already enforces uniqueness
) COMMENT = '인테리어 설문지';

CREATE TABLE likes
(
    likes_id    INTEGER NOT NULL AUTO_INCREMENT COMMENT '즐겨찾기ID',
    user_id    INTEGER(10) NOT NULL COMMENT '회원ID',
    portfolio_id    INTEGER(10) NOT NULL COMMENT '소개글ID',
    is_delete    ENUM('Y','N') DEFAULT 'N' NOT NULL COMMENT '삭제여부',
 PRIMARY KEY ( likes_id ),
 UNIQUE (likes_id)  -- Primary key already enforces uniqueness
) COMMENT = '즐겨찾기';

CREATE TABLE recommend
(
    recommend_id    INTEGER(10) NOT NULL AUTO_INCREMENT COMMENT '추천ID',
    portfolio_id    INTEGER(10) NOT NULL COMMENT '소개글ID',
    user_id    INTEGER(10) NOT NULL COMMENT '회원ID',
 PRIMARY KEY ( recommend_id ),
 UNIQUE (recommend_id)  -- Primary key already enforces uniqueness
) COMMENT = '추천';

CREATE TABLE report
(
    report_id    INTEGER(10) NOT NULL AUTO_INCREMENT COMMENT '신고ID',
    report_contents    VARCHAR(100) NOT NULL COMMENT '신고내용',
    reporter_user_id    INTEGER(10) NOT NULL COMMENT '신고 할 사람 ID',
    report_date    DATETIME NOT NULL COMMENT '신고 신청일',
    reported_id    INTEGER(10) NOT NULL COMMENT '신고 당한 사람 ID',
    board_id    INTEGER(10) COMMENT '게시판ID',
    board_comments_id    INTEGER(10) COMMENT '댓글ID',
 PRIMARY KEY ( report_id ),
 UNIQUE (report_id)  -- Primary key already enforces uniqueness
) COMMENT = '신고';

CREATE TABLE review
(
    review_id    INTEGER(10) NOT NULL AUTO_INCREMENT COMMENT '이용후기ID',
    review_contents    VARCHAR(255) NOT NULL COMMENT '내용',
    portfolio_id    INTEGER(10) NOT NULL COMMENT '소개글ID',
    counsel_id    INTEGER(10) NOT NULL COMMENT '상담ID',
    review_image    TEXT COMMENT '이미지',
 PRIMARY KEY ( review_id ),
 UNIQUE (review_id)  -- Primary key already enforces uniqueness
) COMMENT = '후기';

CREATE TABLE review_comments
(
    review_comments_id    INTEGER NOT NULL AUTO_INCREMENT COMMENT '이용후기댓글ID',
    review_comments_contents    VARCHAR(255) NOT NULL COMMENT '내용',
    review_id    INTEGER(10) NOT NULL COMMENT '이용후기ID',
    user_id    INTEGER(10) NOT NULL COMMENT '회원ID',
 PRIMARY KEY ( review_comments_id ),
 UNIQUE (review_comments_id)  -- Primary key already enforces uniqueness
) COMMENT = '이용 후기 댓글';

CREATE TABLE comfort
(
    comfort_id    INTEGER(10) NOT NULL AUTO_INCREMENT COMMENT '주변시설 코드',
    comfort_name    VARCHAR(255) NOT NULL COMMENT '주변시설 이름',
 PRIMARY KEY ( comfort_id ),
 UNIQUE (comfort_id)  -- Primary key already enforces uniqueness
) COMMENT = '주변시설';

CREATE TABLE apt_comforts
(
    apt_comfort_id    INTEGER(10) NOT NULL AUTO_INCREMENT COMMENT '일련번호',
    portfolio_id    INTEGER(10) NOT NULL COMMENT '소개글ID',
    comfort_id    INTEGER(10) NOT NULL COMMENT '주변시설 코드',
 PRIMARY KEY ( apt_comfort_id ),
 UNIQUE (apt_comfort_id)  -- Primary key already enforces uniqueness
) COMMENT = '아파트 별 편의시설';

CREATE TABLE board_like
(
    board_like_id    INTEGER(10) NOT NULL COMMENT '게시판 좋아요ID',
    user_id    INTEGER(10) NOT NULL COMMENT '회원ID',
    board_like_is_delete    ENUM('Y','N') DEFAULT 'N' NOT NULL COMMENT '좋아요 여부',
    board_comments_id    INTEGER(10) COMMENT '댓글ID',
    board_id    INTEGER(10) COMMENT '게시판ID',
 PRIMARY KEY ( board_like_id ),
 UNIQUE (board_like_id)  -- Primary key already enforces uniqueness
) COMMENT = '좋아요';
