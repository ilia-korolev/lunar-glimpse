CREATE TABLE gallery (
    PRIMARY KEY(date),
    date date NOT NULL,
    uri text NOT NULL,
    hd_uri text NOT NULL,
    copyright text,
    type text NOT NULL
);

CREATE TABLE gallery_translations (
    PRIMARY KEY(date, language),
    FOREIGN KEY(date) REFERENCES gallery(date) ON DELETE CASCADE,
    date date NOT NULL,
    language text NOT NULL,
    original_language text NOT NULL,
    title text NOT NULL,
    explanation text NOT NULL
);

CREATE TABLE news_sources (
    PRIMARY KEY(uri),
    uri text NOT NULL,
    icon_uri text NOT NULL,
    language text NOT NULL
);

COPY gallery
FROM '/docker-entrypoint-initdb.d/gallery.csv'
DELIMITER ','
NULL AS E'\'\''
CSV HEADER;

COPY gallery_translations
FROM '/docker-entrypoint-initdb.d/gallery_translations_en.csv'
DELIMITER ','
NULL AS E'\'\''
CSV HEADER;

COPY gallery_translations
FROM '/docker-entrypoint-initdb.d/gallery_translations_ja.csv'
DELIMITER ','
NULL AS E'\'\''
CSV HEADER;

COPY gallery_translations
FROM '/docker-entrypoint-initdb.d/gallery_translations_ru.csv'
DELIMITER ','
NULL AS E'\'\''
CSV HEADER;

COPY gallery_translations
FROM '/docker-entrypoint-initdb.d/gallery_translations_zh.csv'
DELIMITER ','
NULL AS E'\'\''
CSV HEADER;

COPY news_sources
FROM '/docker-entrypoint-initdb.d/news_sources.csv'
DELIMITER ','
NULL AS E'\'\''
CSV HEADER;