-- TS_076 인테리어  업체 매칭
-- "사용자가 설문한 내용을 바탕으로 원하는 인테리어 업체 추천한 뒤 recommend 테이블에 삽입한다."
INSERT INTO recommend (portfolio_id, user_id)
SELECT DISTINCT i.portfolio_id, ins.user_id
FROM interior_portfolio i
JOIN interior_survey ins ON ins.interior_concept = i.concept 
                                                                 AND ins.interior_house_type = i.interior_house_type 
                         AND ins.interior_budget >= i.interior_budget
WHERE ins.user_id = 17;