CREATE TABLE users
(
    user_id      varchar(30) PRIMARY KEY,
    first_name   varchar(30) NOT NULL,
    last_name    varchar(30) NOT NULL,
    email        varchar(80) NOT NULL,
    phone_number varchar(20) NULL
);

CREATE TABLE pswd
(
    user_id            varchar(30)   NOT NULL REFERENCES users (user_id) UNIQUE,
    pswd_hash          varchar(500),
    created_date       date          NOT NULL,
    locked             boolean       NOT NULL	
);

CREATE TABLE pswd_hist
(
	pswd_hist_id       SERIAL PRIMARY KEY,
	user_id            varchar(30)   NOT NULL REFERENCES users (user_id),
    pswd_hash          varchar(500),
    created_date       date          NOT NULL	
);