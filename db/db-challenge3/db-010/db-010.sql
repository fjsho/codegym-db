select
  u.user_name,
  p.posted_at,
  c.chat_name
from posts as p
join users as u
  on p.posted_by_user_id = u.id
join chatrooms as c
  on p.posted_chat_id = c.id
where p.posted_at in (
  select max(posted_at)
  from posts
  group by posted_chat_id
  )
  and p.is_deleted = 0
  and u.is_deleted = 0
order by c.id
