-- TS_075 이사 업체 매칭
-- 사용자가 설문한 내용을 바탕으로 원하는 이사업체를 보여주고 recommend테이블에 삽입한다.
INSERT INTO recommend (portfolio_id, user_id)
SELECT DISTINCT p.portfolio_id, ms.user_id
FROM move_portfolio p  
JOIN move_survey ms ON p.move_type = ms.move_type
WHERE ms.user_id = 9
    AND (
        -- from_address에서 두 번째 단어가 active_location에 포함되는지 확인
        TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(ms.from_address, ' ', 2), ' ', -1)) IN (
            TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(p.active_location, ',', 1), ' ', -1)), 
            TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(p.active_location, ',', 2), ' ', -1))
        )
        OR
        -- to_address에서 두 번째 단어가 active_location에 포함되는지 확인
        TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(ms.to_address, ' ', 2), ' ', -1)) IN (
            TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(p.active_location, ',', 1), ' ', -1)), 
            TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(p.active_location, ',', 2), ' ', -1))
        )
    );
    