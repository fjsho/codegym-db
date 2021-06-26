select
  u.user_name as ユーザー名,
  c.chat_name as チャット名,
  date_format(cm.joined_at,'%Y-%c-%d') as 参加日時,
from chat_members as cm
join users as u
  on cm.user_id = u.id
join chatrooms as c
  on cm.chat_id = c.id
where u.is_deleted = 0
  and c.is_deleted = 0
order by cm.joined_at
