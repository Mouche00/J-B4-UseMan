CREATE TABLE departments (
	id UUID PRIMARY KEY,
	name VARCHAR(20) NOT NULL
);

CREATE TABLE users (
	id UUID PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	email VARCHAR(40) NOT NULL,
	phone VARCHAR(15) NOT NULL,
	post VARCHAR(20) NOT NULL,
	department_id VARCHAR(40) 
);

INSERT INTO departments VALUES (gen_random_uuid(), 'hr'),
							(gen_random_uuid(), 'finance'),
							(gen_random_uuid(), 'marketing'),
							(gen_random_uuid(), 'operations'),
							(gen_random_uuid(), 'it');