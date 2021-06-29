begin;
update users
set
  is_deleted = 1,
  updated_at = current_timestamp
where (
  office_phone is null
  or office_phone = ""
  )and(
  cell_phone is null
  or cell_phone = "");
commit;
