create table users(
  id int(11) primary key auto_increment,
  mail varchar(100) not null,
  password varchar(100) not null,
  user_name varchar(100) not null,
  user_introduction varchar(1000),
  office_phone char(13),
  cell_phone char(13),
  created_at timestamp default current_timestamp not null,
  updated_at timestamp default current_timestamp not null,
  is_deleted tinyint(1) default 0 not null
) engine InnoDB;

create table chatrooms(
  id int(11) primary key auto_increment,
  chat_name varchar(100) not null,
  chat_description varchar(1000),
  created_by_user_id int(11) not null,
  created_at timestamp default current_timestamp not null,
  updated_by_user_id int(11),
  updated_at timestamp default current_timestamp not null,
  is_disabled_transmission tinyint(1) default 0 not null,
  is_directchat tinyint(1) default 0 not null,
  is_deleted tinyint(1) default 0 not null,
  foreign key(created_by_user_id) references users(id),
  foreign key(updated_by_user_id) references users(id)
) engine InnoDB;

create table chat_members(
  user_id int(11) not null,
  chat_id int(11) not null,
  joined_at timestamp default current_timestamp not null,
  foreign key(user_id) references users(id),
  foreign key(chat_id) references chatrooms(id)
) engine InnoDB;

create table posts(
  id int(11) primary key auto_increment,
  posted_by_user_id int(11) not null,
  posted_description varchar(1000) not null,
  posted_at timestamp default current_timestamp not null,
  updated_by_user_id int(11),
  updated_at timestamp default current_timestamp not null,
  posted_chat_id int(11) not null,
  file_name varchar(100),
  is_deleted tinyint(1) default 0 not null,
  foreign key(posted_by_user_id) references users(id),
  foreign key(updated_by_user_id) references users(id),
  foreign key(posted_chat_id) references chatrooms(id)
) engine InnoDB;

create table tasks(
  id int(11) primary key auto_increment,
  task_description varchar(1000) not null,
  person_in_charge_id int(11) not null,
  due_at datetime,
  created_by_user_id int(11) not null,
  created_at timestamp default current_timestamp not null,
  updated_by_user_id int(11),
  updated_at timestamp default current_timestamp not null,
  registerd_chat_id int(11) not null,
  is_completed tinyint(1) default 0 not null,
  is_deleted tinyint(1) default 0 not null,
  foreign key(person_in_charge_id) references users(id),
  foreign key(created_by_user_id) references users(id),
  foreign key(updated_by_user_id) references users(id),
  foreign key(registerd_chat_id) references chatrooms(id)
) engine InnoDB;