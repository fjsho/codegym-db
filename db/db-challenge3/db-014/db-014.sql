begin;
delete from chat_members
where user_id in(
  select id
  from users
  where is_deleted = 1
  );
commit;