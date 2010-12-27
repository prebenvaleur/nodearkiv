CREATE TABLE "boxes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "label" varchar(255), "location_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "casettes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "label" varchar(255), "box_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "compilations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "casette_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "composers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "born_year" integer, "deceased_year" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "green_binders" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "location_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "tunes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "composer_id" integer, "compilation_id" integer, "casette_id" integer, "greenbinder_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20101227202114');

INSERT INTO schema_migrations (version) VALUES ('20101227202201');

INSERT INTO schema_migrations (version) VALUES ('20101227202537');

INSERT INTO schema_migrations (version) VALUES ('20101227202654');

INSERT INTO schema_migrations (version) VALUES ('20101227202718');

INSERT INTO schema_migrations (version) VALUES ('20101227202742');