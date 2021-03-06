DROP TABLE members;
DROP TABLE sessions;
DROP TABLE booked_sessions;

CREATE TABLE sessions (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    timedate TIMESTAMP,
    length INT,
    capacity INT,
    level VARCHAR(255),
    description TEXT,
    active_session BOOLEAN
);

CREATE TABLE members (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    nationality VARCHAR(255),
    mob_number VARCHAR(255),
    email VARCHAR(255),
    membership_type VARCHAR(255),
    active_member BOOLEAN
);

CREATE TABLE booked_sessions (
    id SERIAL PRIMARY KEY,
    member_id INT NOT NULL REFERENCES members(id) ON DELETE CASCADE,
    session_id INT NOT NULL REFERENCES sessions(id) ON DELETE CASCADE
);

