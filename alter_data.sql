alter table usr rename email to e_mail
alter table usr add constraint e_mail_unique unique(e_mail);
alter table usr alter e_mail set not null
alter table usr add column birth_date timestamp;
update usr set birth_date='2004-01-08 04:05:06' where id<=10;
update usr set birth_date='2008-01-08 04:05:06' where id>10;
alter table usr add constraint FK_USR_ROLE foreign key (role_name) references
role;
alter table role add constraint FK_ROLE_PERMISSION foreign key (name) references
permission;
alter table role_permission add constraint FK_ROLE_PERMISSION_PERMISSION foreign key (role_name) references
permission;
