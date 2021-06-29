begin;
update chatrooms
set
  is_disabled_transmission = 0,
  updated_by_user_id = 1,
  updated_at = current_timestamp
where id not in (
  select distinct chpat_id
  from chat_members
  where user_id = 1
  )
  and is_deleted = 0;
commit;
