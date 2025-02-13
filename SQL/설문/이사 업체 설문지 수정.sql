-- TS_069 이사 업체 설문지 수정
-- 사용자가 이사 설문지 테이블에 이사 형태 구분, 출발지 주소, 도착지 주소에 대한 답변을 수정한다.
UPDATE move_survey 
SET to_address = '서울시 서대문구 홍제동 89-34'
WHERE user_id= 15;