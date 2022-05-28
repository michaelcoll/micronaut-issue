---------
-- offre
CREATE TABLE regie_logo
(
    regie_id  UUID PRIMARY KEY,
    mime_type VARCHAR(100) NOT NULL,
    data      BYTEA,

    CONSTRAINT regie_fk FOREIGN KEY (regie_id) REFERENCES regie (regie_id)
);
