CREATE TABLE geese (
	image TEXT NOT NULL,
	name TEXT NOT NULL,
	tag TEXT,
	locens_id INTEGER REFERENCES locens(locens_id),
	explanation TEXT,
	goose_id INTEGER PRIMARY KEY
	
);

CREATE TABLE advices (
	advice TEXT NOT NULL,
	tag TEXT,
	locens_id INTEGER REFERENCES locens(locens_id),
	advice_id INTEGER PRIMARY KEY
);

CREATE TABLE animals (
	image TEXT NOT NULL,
	name TEXT NOT NULL,
	tag TEXT,
	locens_id INTEGER REFERENCES locens(locens_id),
	explanation TEXT,
	animal_id INTEGER PRIMARY KEY
);

CREATE TABLE relations (
	goose_id INTEGER REFERENCES geese(goose_id),
	animal_id INTEGER REFERENCES animals(animal_id),
	advice_id INTEGER REFERENCES advices(advice_id)
);

CREATE TABLE locens (
	location CHAR(1) CHECK(location = 'Y' OR location = 'N'),
	censorship CHAR(1) CHECK(censorship = '0' OR censorship = '1' OR censorship = '2'),
	locens_id INTEGER PRIMARY KEY
);