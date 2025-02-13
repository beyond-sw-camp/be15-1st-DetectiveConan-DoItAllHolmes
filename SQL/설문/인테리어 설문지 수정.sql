-- TS_072 인테리어 설문지 수정
-- 사용자가 기존에 작성한 이사 업체 설문지를 수정한다.
UPDATE interior_survey 
SET interior_concept = '미니멀', interior_house_size = 27, interior_budget = 6000000
WHERE user_id =11;