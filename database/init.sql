CREATE TYPE gallery_item_type AS ENUM ('image', 'video');
CREATE TYPE language_code AS ENUM ('en', 'jp', 'ru', 'zh');

CREATE TABLE gallery (
    PRIMARY KEY (date, language_code),
    date date NOT NULL,
    uri text NOT NULL,
    hd_uri text NOT NULL,
    title text NOT NULL,
    explanation text NOT NULL,
    copyright text,
    type gallery_item_type NOT NULL,
    language_code language_code NOT NULL
);
