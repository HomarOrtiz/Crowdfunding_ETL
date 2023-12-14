CREATE DATABASE crowdfunding_db;

CREATE TABLE "category" (
    "category_id" varchar   NOT NULL,
    "category" varchar   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "sub_category" (
    "sub_category_id" varchar   NOT NULL,
    "sub_category" varchar   NOT NULL,
    CONSTRAINT "pk_sub_category" PRIMARY KEY (
        "sub_category_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaign" (
    "contact_id" int   NOT NULL,
    "company_name" varchar   NOT NULL,
    "Description" varchar   NOT NULL,
    "goal" numeric  NOT NULL,
    "pledged" numeric   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar   NOT NULL,
    "sub_category_id" varchar   NOT NULL
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_sub_category_id" FOREIGN KEY("sub_category_id")
REFERENCES "sub_category" ("sub_category_id");

SELECT * FROM category;

SELECT * FROM sub_category;

SELECT * FROM contacts;

SELECT * FROM campaign;
