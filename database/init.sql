CREATE TABLE gallery (
    PRIMARY KEY (date, language),
    date date NOT NULL,
    uri text NOT NULL,
    hd_uri text NOT NULL,
    title text NOT NULL,
    explanation text NOT NULL,
    copyright text,
    type text NOT NULL,
    language text NOT NULL
);
