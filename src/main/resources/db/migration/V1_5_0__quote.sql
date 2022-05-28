---------
-- devis
CREATE TABLE quote
(
    quote_id           UUID PRIMARY KEY,
    ref                VARCHAR(200),
    co_owner_syndicate VARCHAR(200),
    regie_id           VARCHAR(40),
    regie_contacts     VARCHAR(500),
    received_by        VARCHAR(200),
    visit_date         TIMESTAMP,
    features           VARCHAR(500),
    price              DECIMAL,
    redacted_by        VARCHAR(50)
);

---------
-- prestation de devis
CREATE TABLE quote_offer
(
    quote_offer_id BIGINT PRIMARY KEY,
    quote_id       UUID,
    offer_id       BIGINT,
    frequency_id   BIGINT,

    CONSTRAINT quote_offer_quote_fk FOREIGN KEY (quote_id) REFERENCES quote (quote_id),
    CONSTRAINT quote_offer_offer_fk FOREIGN KEY (offer_id) REFERENCES offer (offer_id),
    CONSTRAINT quote_offer_frequency_fk FOREIGN KEY (frequency_id) REFERENCES frequency (frequency_id)
);

---------
-- service de devis
CREATE TABLE quote_service
(
    quote_service_id BIGINT PRIMARY KEY,
    quote_offer_id   BIGINT,
    service_id       BIGINT,
    frequency_id     BIGINT,
    days             VARCHAR(500),

    CONSTRAINT quote_service_quote_offer_fk FOREIGN KEY (quote_offer_id) REFERENCES quote_offer (quote_offer_id),
    CONSTRAINT quote_service_service_fk FOREIGN KEY (service_id) REFERENCES service (service_id),
    CONSTRAINT quote_service_frequency_fk FOREIGN KEY (frequency_id) REFERENCES frequency (frequency_id)
);


