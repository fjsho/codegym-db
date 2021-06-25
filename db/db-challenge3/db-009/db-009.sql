select count(*) as 投稿数, c.chat_name as チャットルーム名
from posts as p
right join chatrooms as c
on p.posted_chat_id = c.id
join users as u
on p.posted_by_user_id = u.id
where p.is_deleted = 0 and u.is_deleted = 0
group by チャットルーム名
order by 投稿数 desc