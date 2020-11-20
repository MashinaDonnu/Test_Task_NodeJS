CREATE TABLE data_table (
    id SERIAL PRIMARY KEY,
    country VARCHAR(255),
    total_cases VARCHAR(255),
    new_cases VARCHAR(255),
    total_deaths VARCHAR(255),
    new_deaths VARCHAR(255),
    total_recovered VARCHAR(255),
    active_cases VARCHAR(255),
    serious_critical VARCHAR(255),
    tot_cases_1m_pop VARCHAR(255),
    tot_deaths_1m_pop VARCHAR(255),
    total_tests VARCHAR(255),
    tests_1m_pop VARCHAR(255),
    population VARCHAR(255)
);

create TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    last_name VARCHAR(255),
    phone INTEGER,
    countries VARCHAR(255)[]
);
