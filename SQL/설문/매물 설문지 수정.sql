-- TS_066 매물 설문지 수정
-- 사용자가 매물 설문지 테이블에 예산, 매입 형태, 위치, 평수, 층수, 욕실 수, 편의시설 정보, 주변 시설, 방 갯수에 대한 답변을 수정한다.
UPDATE house_survey
SET house_location = '경기도 수원시 영통구'
WHERE user_id = 6;