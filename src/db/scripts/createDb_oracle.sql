CREATE TABLE "LatestNews" (
	"id" INT,
	"showStartDate" DATETIME,
	"showEndDate" DATETIME,
	"newsItemId" INT,
	constraint LATESTNEWS_PK PRIMARY KEY ("id")
CREATE sequence "LATESTNEWS_SEQ"
/
CREATE trigger "BI_LATESTNEWS"
  before insert on "LATESTNEWS"
  for each row
begin
  select "LATESTNEWS_SEQ".nextval into :NEW."id" from dual;
end;
/

)
/
CREATE TABLE "NewsItems" (
	"id" INT,
	"title" VARCHAR2,
	"content" TEXT,
	"postDate" DATETIME,
	"link" VARCHAR2,
	"authorId" INT,
	constraint NEWSITEMS_PK PRIMARY KEY ("id")
CREATE sequence "NEWSITEMS_SEQ"
/
CREATE trigger "BI_NEWSITEMS"
  before insert on "NEWSITEMS"
  for each row
begin
  select "NEWSITEMS_SEQ".nextval into :NEW."id" from dual;
end;
/

)
/
CREATE TABLE "Books" (
	"id" INT,
	"title" VARCHAR2,
	"authorId" INT,
	"publisherId" INT,
	"yearPublished" INT,
	constraint BOOKS_PK PRIMARY KEY ("id")
CREATE sequence "BOOKS_SEQ"
/
CREATE trigger "BI_BOOKS"
  before insert on "BOOKS"
  for each row
begin
  select "BOOKS_SEQ".nextval into :NEW."id" from dual;
end;
/

)
/
CREATE TABLE "VerifiedPerson" (
	"id" INT,
	"firstname" VARCHAR2,
	"lastname" VARCHAR2,
	constraint VERIFIEDPERSON_PK PRIMARY KEY ("id")
CREATE sequence "VERIFIEDPERSON_SEQ"
/
CREATE trigger "BI_VERIFIEDPERSON"
  before insert on "VERIFIEDPERSON"
  for each row
begin
  select "VERIFIEDPERSON_SEQ".nextval into :NEW."id" from dual;
end;
/

)
/
CREATE TABLE "Publishers" (
	"id" INT,
	"name" VARCHAR2,
	constraint PUBLISHERS_PK PRIMARY KEY ("id")
CREATE sequence "PUBLISHERS_SEQ"
/
CREATE trigger "BI_PUBLISHERS"
  before insert on "PUBLISHERS"
  for each row
begin
  select "PUBLISHERS_SEQ".nextval into :NEW."id" from dual;
end;
/

)
/
CREATE TABLE "Queries" (
	"id" INT,
	"name" VARCHAR2,
	"email" VARCHAR2,
	"mobile" VARCHAR2,
	"date" DATETIME,
	"postalAddress" TEXT,
	"message" TEXT,
	constraint QUERIES_PK PRIMARY KEY ("id")
CREATE sequence "QUERIES_SEQ"
/
CREATE trigger "BI_QUERIES"
  before insert on "QUERIES"
  for each row
begin
  select "QUERIES_SEQ".nextval into :NEW."id" from dual;
end;
/

)
/
ALTER TABLE "LatestNews" ADD CONSTRAINT "LatestNews_fk0" FOREIGN KEY ("newsItemId") REFERENCES NewsItems("id");

ALTER TABLE "NewsItems" ADD CONSTRAINT "NewsItems_fk0" FOREIGN KEY ("authorId") REFERENCES VerifiedPerson("id");

ALTER TABLE "Books" ADD CONSTRAINT "Books_fk0" FOREIGN KEY ("authorId") REFERENCES VerifiedPerson("id");
ALTER TABLE "Books" ADD CONSTRAINT "Books_fk1" FOREIGN KEY ("publisherId") REFERENCES Publishers("id");



