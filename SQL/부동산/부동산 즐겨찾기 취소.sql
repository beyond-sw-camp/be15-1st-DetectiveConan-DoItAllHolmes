-- TS_021. 부동산 즐겨찾기 취소
SELECT * FROM likes;
UPDATE likes
SET is_delete = "Y"
WHERE likes_id = 13;

SELECT * FROM likes;
