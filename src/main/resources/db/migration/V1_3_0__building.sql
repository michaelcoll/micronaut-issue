---------
-- immeuble
CREATE TABLE building
(
    building_id        UUID PRIMARY KEY,
    name               VARCHAR(100) NOT NULL UNIQUE,
    address            VARCHAR(300),
    additional_address VARCHAR(300),
    postal_code        VARCHAR(5),
    city               VARCHAR(100)
);
