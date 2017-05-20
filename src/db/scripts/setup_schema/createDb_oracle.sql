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
CREATE TABLE "NewsItem" (
	"id" INT,
	"title" VARCHAR2,
	"content" TEXT,
	"postDate" DATETIME,
	"link" VARCHAR2,
	"authorId" INT,
	constraint NEWSITEM_PK PRIMARY KEY ("id")
CREATE sequence "NEWSITEM_SEQ"
/
CREATE trigger "BI_NEWSITEM"
  before insert on "NEWSITEM"
  for each row
begin
  select "NEWSITEM_SEQ".nextval into :NEW."id" from dual;
end;
/

)
/
CREATE TABLE "Book" (
	"id" INT,
	"title" VARCHAR2,
	"authorId" INT,
	"publisherId" INT,
	"yearPublished" INT,
	"bookCoverImageUrl" VARCHAR2,
	constraint BOOK_PK PRIMARY KEY ("id")
CREATE sequence "BOOK_SEQ"
/
CREATE trigger "BI_BOOK"
  before insert on "BOOK"
  for each row
begin
  select "BOOK_SEQ".nextval into :NEW."id" from dual;
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
CREATE TABLE "Publisher" (
	"id" INT,
	"name" VARCHAR2,
	constraint PUBLISHER_PK PRIMARY KEY ("id")
CREATE sequence "PUBLISHER_SEQ"
/
CREATE trigger "BI_PUBLISHER"
  before insert on "PUBLISHER"
  for each row
begin
  select "PUBLISHER_SEQ".nextval into :NEW."id" from dual;
end;
/

)
/
CREATE TABLE "Query" (
	"id" INT,
	"name" VARCHAR2,
	"email" VARCHAR2,
	"mobile" VARCHAR2,
	"date" DATETIME,
	"postalAddress" TEXT,
	"message" TEXT,
	constraint QUERY_PK PRIMARY KEY ("id")
CREATE sequence "QUERY_SEQ"
/
CREATE trigger "BI_QUERY"
  before insert on "QUERY"
  for each row
begin
  select "QUERY_SEQ".nextval into :NEW."id" from dual;
end;
/

)
/
CREATE TABLE "BookType" (
	"id" INT,
	"name" VARCHAR2,
	constraint BOOKTYPE_PK PRIMARY KEY ("id")
CREATE sequence "BOOKTYPE_SEQ"
/
CREATE trigger "BI_BOOKTYPE"
  before insert on "BOOKTYPE"
  for each row
begin
  select "BOOKTYPE_SEQ".nextval into :NEW."id" from dual;
end;
/

)
/
CREATE TABLE "BookTypeMap" (
	"bookTypeId" INT,
	"bookId" INT
)
/
ALTER TABLE "LatestNews" ADD CONSTRAINT "LatestNews_fk0" FOREIGN KEY ("newsItemId") REFERENCES NewsItem("id");

ALTER TABLE "NewsItem" ADD CONSTRAINT "NewsItem_fk0" FOREIGN KEY ("authorId") REFERENCES VerifiedPerson("id");

ALTER TABLE "Book" ADD CONSTRAINT "Book_fk0" FOREIGN KEY ("authorId") REFERENCES VerifiedPerson("id");
ALTER TABLE "Book" ADD CONSTRAINT "Book_fk1" FOREIGN KEY ("publisherId") REFERENCES Publisher("id");





ALTER TABLE "BookTypeMap" ADD CONSTRAINT "BookTypeMap_fk0" FOREIGN KEY ("bookTypeId") REFERENCES BookType("id");
ALTER TABLE "BookTypeMap" ADD CONSTRAINT "BookTypeMap_fk1" FOREIGN KEY ("bookId") REFERENCES Book("id");
