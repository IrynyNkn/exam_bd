CREATE TABLE port (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL
);

CREATE TABLE customer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL
);

CREATE TABLE load (
    id SERIAL PRIMARY KEY,
    type VARCHAR(255) NOT NULL,
    weight INT NOT NULL
);

CREATE TABLE ship (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    year_of_construction INT NOT NULL,
    year_of_repair INT NULL,
    captain_name VARCHAR(255) NOT NULL,
    max_weight INT NOT NULL,
    port_id INT NOT NULL,
    FOREIGN KEY (port_id) REFERENCES port (id),
    CHECK ( check_if_ship_needs_repair(year_of_construction, year_of_repair) )
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    ship_id INT NOT NULL,
    load_id INT NOT NULL,
    customer_id INT NOT NULL,
    departure_port_id INT NOT NULL,
    arrival_port_id INT NOT NULL,
    contract_number INT NOT NULL,
    date_of_departure DATE NOT NULL,
    date_of_arrival DATE NOT NULL,
    fee INT NOT NULL,

    FOREIGN KEY (ship_id) REFERENCES ship (id),
    FOREIGN KEY (load_id) REFERENCES load (id),
    FOREIGN KEY (customer_id) REFERENCES customer (id),
    FOREIGN KEY (departure_port_id) REFERENCES port (id),
    FOREIGN KEY (arrival_port_id) REFERENCES port (id)
);

