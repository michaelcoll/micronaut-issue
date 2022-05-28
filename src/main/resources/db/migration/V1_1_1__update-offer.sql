---------
-- offre
ALTER TABLE offer
    ADD COLUMN daily BOOLEAN;

UPDATE offer SET daily = TRUE
WHERE offer_id = 1
