CREATE TABLE Country (
    Code text PRIMARY KEY,
    Name text,
    Capital text,
    Province text,
    Area decimal,
    Population decimal
);

CREATE TABLE City (
    Name text,
    Country text,
    Province text,
    Population decimal,
    Latitude decimal,
    Longitude decimal,
    Elevation decimal,
    PRIMARY KEY ((Name, Country), Province)
);

CREATE TABLE Province (
    Name text,
    Country text,
    Population decimal,
    Area decimal,
    Capital text,
    CapProv text,
    PRIMARY KEY ((Name, Country))
);

CREATE TABLE Economy (
    Country text PRIMARY KEY,
    GDP decimal,
    Agriculture decimal,
    Service decimal,
    Industry decimal,
    Inflation decimal,
    Unemployment decimal
);

CREATE TABLE Population (
    Country text PRIMARY KEY,
    Population_Growth decimal,
    Infant_Mortality decimal
);

CREATE TABLE Politics (
    Country text PRIMARY KEY,
    Independence date,
    WasDependent text,
    Dependent text,
    Government text
);

CREATE TABLE Religion (
    Name text,
    Country text,
    Percentage decimal,
    PRIMARY KEY ((Name, Country))
);

CREATE TABLE EthnicGroup (
    Name text,
    Country text,
    Percentage decimal,
    PRIMARY KEY ((Name, Country))
);

CREATE TABLE Spoken (
    Country text,
    Language text,
    Percentage decimal,
    PRIMARY KEY ((Country, Language))
);

CREATE TABLE Language (
    Name text PRIMARY KEY,
    Superlanguage text
);

CREATE TABLE borders (
    Country1 text,
    Country2 text,
    Length decimal,
    PRIMARY KEY ((Country1, Country2))
);
