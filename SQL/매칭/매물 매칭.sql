-- TS_074 매물 매칭
-- 사용자가 설문한 내용을 바탕으로 원하는 매물을 보여주고  recommend테이블에 삽입한다.
INSERT INTO recommend (portfolio_id, user_id)
SELECT  DISTINCT ap.portfolio_id, hs.user_id
FROM apt_portfolio ap
JOIN house_survey hs ON  hs.floor_space DIV 10 = ap.floor_space DIV 10
                                                        AND hs.stairs = ap.stairs
                                                        AND hs.bathroom = ap.bathroom
                                                        AND hs.budget >= ap.price
                                                        AND hs.room_count = ap.room_count
                                                        AND hs.deal_type = ap.deal_type
WHERE hs.user_id = 20;