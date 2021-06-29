begin;
update tasks
set
  is_completed = 1,
  updated_by_user_id = 1,
  updated_at = current_timestamp
where created_at between '2020/4/26 09:00' and '2020/4/26 11:30'
  and is_deleted = 0;
commit;