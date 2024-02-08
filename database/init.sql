CREATE TABLE gallery (
    PRIMARY KEY(date),
    date date NOT NULL,
    uri text NOT NULL,
    hd_uri text NOT NULL,
    copyright text,
    type text NOT NULL
);

CREATE TABLE gallery_translations (
    PRIMARY KEY (date, language),
    FOREIGN KEY(date) REFERENCES gallery(date) ON DELETE CASCADE,
    date date NOT NULL,
    language text NOT NULL,
    original_language text NOT NULL,
    title text NOT NULL,
    explanation text NOT NULL
);
