-- TS_068 이사 업체 설문지 작성
-- 사용자가 이사 설문지 테이블에 이사 형태 구분, 출발지 주소, 도착지 주소에 대한 답변을 작성한다.
INSERT INTO move_survey (user_id, move_type, from_address, to_address) 
VALUES(21, '반포장',  '서울시 강남구 역삼동 123-45', '서울시 송파구 잠실동 678-90');