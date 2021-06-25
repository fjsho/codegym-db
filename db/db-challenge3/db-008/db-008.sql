select u.user_name as ユーザー名, c.chat_name as チャット名, substring(joined_at,1,10) as 参加日時
from chat_members
join users as u
on user_id = u.id
join chatrooms as c
on chat_id = c.id
where u.is_deleted = 0 and c.is_deleted = 0
order by 参加日時
