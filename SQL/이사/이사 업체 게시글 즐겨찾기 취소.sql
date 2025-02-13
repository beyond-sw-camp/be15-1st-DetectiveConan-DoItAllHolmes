-- TS-48 이사 업체 즐겨찾기 취소 
--	사용자가 즐겨찾기 테이블에 있는 업체별 소개글을 삭제한다.
UPDATE likes
   SET is_delete = 'Y'
   WHERE (user_id =9 AND portfolio_id = 29) OR likes_id = 12;