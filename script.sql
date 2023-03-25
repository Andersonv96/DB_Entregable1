insert into users (  --Propiedad
	name,
	email,
	"password",
	age 
) values (           -- Valores de cada propiedad
	'Edgar', 
	'edgar@academlo.com',
	'naranja',
	'20'
);


insert into users (  
	name,
	email,
	"password",
	age 
) values (           
	'Anderson', 
	'Anderson@academlo.com',
	'naranja',
	'26'
);

update users set password = 'root' where id =2;


insert into courses (
"tittle",
"description",
user_id,
"level",
"teacher"
) values (
'Fundamentos',
'javascript',
'1',
'intermedio',
'brayan'
);


insert into "course_video" (
"tittle",
"url",
"id_coruse",
"id_category"
) values (
'Node Js',
'www.youtube.com',
'1',
'2'
);  


insert into "course_video" (
"tittle",
"url",
"id_coruse",
"id_category"
) values(
'React',
'www.youtube/react.com',
'2',
'3'
);


insert into "categories" (
"name"
) values (
'Node Js'
);

insert into "categories" (
"name"
) values (
'React'
);
