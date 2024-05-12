CREATE SEQUENCE holiday_id_seq;

CREATE TABLE Holiday
(
    id             BIGINT PRIMARY KEY DEFAULT nextval('holiday_id_seq') NOT NULL,
    title          TEXT                                                 NOT NULL,
    teaser         TEXT                                                 NOT NULL,
    description    TEXT                                                 NOT NULL,
    imageUrl       TEXT                                                 NOT NULL,
    typeId         INTEGER CHECK (typeId IN (1, 2, 3))                  NOT NULL,
    durationInDays INTEGER                                              NOT NULL,
    minCount       INTEGER                                              NOT NULL,
    maxCount       INTEGER                                              NOT NULL,
    onSale         BOOLEAN                                              NOT NULL,
    soldOut        BOOLEAN                                              NOT NULL
);

CREATE SEQUENCE customer_id_seq;

CREATE TABLE Customer
(
    id        BIGINT PRIMARY KEY DEFAULT nextval('customer_id_seq') NOT NULL,
    firstname TEXT                                                  NOT NULL,
    name      TEXT                                                  NOT NULL,
    country   TEXT                                                  NOT NULL,
    birthdate TIMESTAMP                                             NOT NULL
);