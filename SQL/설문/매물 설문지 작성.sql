-- TS_065 매물 설문지 작성
-- 사용자가 매물 설문지 테이블에 예산, 매입 형태, 위치, 평수, 층수, 욕실 수, 편의시설 정보, 주변 시설, 방 갯수에 대한 답변을 작성한다.
INSERT INTO house_survey (budget, deal_type, house_location, floor_space, stairs, bathroom, comforts_info, user_id, room_count)
VALUES(1000000000, '매매', '서울', 34, 15, 3, '지하철', 21, 3 );