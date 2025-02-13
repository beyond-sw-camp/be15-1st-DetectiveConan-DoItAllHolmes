-- TS-32 인테리어 업체 즐겨찾기 취소
-- 사용자가 즐겨찾기 테이블에 있는 업체별 소개글을 삭제한다.
UPDATE likes
   SET is_delete = 'Y'
   WHERE likes_id = 11 OR (user_id = 6 AND portfolio_id = 11	);
SELECT * FROM likes;