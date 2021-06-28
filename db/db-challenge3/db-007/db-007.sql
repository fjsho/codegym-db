select
  id,
  chat_name,
  chat_description,
  created_by_user_id,
  created_at,
  updated_by_user_id,
  updated_at,
  case is_disabled_transmission
    when 0 then '許可'
    when 1 then '禁止'
  end as is_disabled_transmission,
  is_directchat, 
  is_deleted
from chatrooms
where is_deleted = 0
  and chat_description like '%ダイレクトチャット'
order by id;
