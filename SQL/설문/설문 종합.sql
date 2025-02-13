-- TS_065 매물 설문지 작성
-- 사용자가 매물 설문지 테이블에 예산, 매입 형태, 위치, 평수, 층수, 욕실 수, 편의시설 정보, 주변 시설, 방 갯수에 대한 답변을 작성한다.
INSERT INTO house_survey (budget, deal_type, house_location, floor_space, stairs, bathroom, comforts_info, user_id, room_count)
VALUES(1000000000, '매매', '서울', 34, 15, 3, '지하철', 21, 3 );


-- TS_066 매물 설문지 수정
-- 사용자가 매물 설문지 테이블에 예산, 매입 형태, 위치, 평수, 층수, 욕실 수, 편의시설 정보, 주변 시설, 방 갯수에 대한 답변을 수정한다.
UPDATE house_survey
SET house_location = '경기도 수원시 영통구'
WHERE user_id = 6;


-- TS_067 매물 설문지 조회
-- 사용자가 매물 설문지 테이블에 예산, 매입 형태, 위치, 평수, 층수, 욕실 수, 편의시설 정보, 주변 시설, 방 갯수에 대한 답변을 조회한다.
SELECT * FROM  house_survey WHERE user_id = 6;


-- TS_068 이사 업체 설문지 작성
-- 사용자가 이사 설문지 테이블에 이사 형태 구분, 출발지 주소, 도착지 주소에 대한 답변을 작성한다.
INSERT INTO move_survey (user_id, move_type, from_address, to_address) 
VALUES(21, '반포장',  '서울시 강남구 역삼동 123-45', '서울시 송파구 잠실동 678-90');


-- TS_069 이사 업체 설문지 수정
-- 사용자가 이사 설문지 테이블에 이사 형태 구분, 출발지 주소, 도착지 주소에 대한 답변을 수정한다.
UPDATE move_survey 
SET to_address = '서울시 서대문구 홍제동 89-34'
WHERE user_id= 15;


-- TS_070 이사 업체 설문지 조회
-- 사용자가 자신이 작성한 매물 설문지를 조회한다.
SELECT * FROM move_survey WHERE user_id = 11;


-- TS_071 인테리어 설문지 작성
-- 사용자가 원하는 가격, 규모를 입력하여 설문을 작성한다.
INSERT INTO interior_survey (interior_concept, user_id, interior_house_type, interior_house_size, interior_budget) 
VALUES ('북유럽 스타일', 21, '아파트', 34, 90000000);


-- TS_072 인테리어 설문지 수정
-- 사용자가 기존에 작성한 이사 업체 설문지를 수정한다.
UPDATE interior_survey 
SET interior_concept = '미니멀', interior_house_size = 27, interior_budget = 6000000
WHERE user_id =11;


-- TS_073 인테리어 설문지 조회
-- 사용자가 자신의 인테리어 설문지를 조회한다.
SELECT * FROM interior_survey WHERE user_id = 11;