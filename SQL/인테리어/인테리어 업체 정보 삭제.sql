-- TS-29 인테리어 업체 정보 삭제
-- 사업자는 사용자 정보 테이블에 자신이 작성한 정보를 삭제할 수 있다.
UPDATE business_user
   SET is_delete = 'Y'
   WHERE user_id = 3;
        