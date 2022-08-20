create table `user`
(
	`id` bigint unsigned not null auto_increment comment 'ユーザーの識別子',
	`name` varchar(20) not null comment 'ユーザー名',
	`password` varchar(80) not null comment 'パスワードハッシュ',
	`role` varchar(80) not null comment 'ロール',
	`created` datetime(6) not null comment 'レコード作成日時',
	`modified` datetime(6) not null comment 'レコード作成日時',
	primary key (`id`),
	unique key `uix_name` (`name`) using btree
) Engine=InnoDB default charset=utf8mb4 comment='ユーザー';

create table `task`
(
	`id` bigint unsigned not null auto_increment comment 'タスクの識別子',
	`title` varchar(128) not null comment 'タスクのタイトル',
	`status` varchar(80) not null comment 'タスクの状況',
	`created` datetime(6) not null comment 'レコード作成日時',
	`modified` datetime(6) not null comment 'レコード作成日時',
	primary key (`id`)
) Engine=InnoDB default charset=utf8mb4 comment='タスク';
