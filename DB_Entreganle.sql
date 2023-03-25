CREATE TABLE "users" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL
);

CREATE TABLE "courses" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "tittle" varchar NOT NULL,
  "description" varchar NOT NULL,
  "user_id" int NOT NULL,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL
);

CREATE TABLE "course_video" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "tittle" varchar NOT NULL,
  "url" varchar NOT NULL,
  "id_coruse" int NOT NULL,
  "id_category" int NOT NULL
);

CREATE TABLE "categories" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar
);

ALTER TABLE "courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "course_video" ADD FOREIGN KEY ("id_category") REFERENCES "categories" ("id");

ALTER TABLE "course_video" ADD FOREIGN KEY ("id_coruse") REFERENCES "courses" ("id");
