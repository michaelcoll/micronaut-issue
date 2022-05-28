---------
-- frequence
CREATE TABLE frequency
(
    frequency_id BIGSERIAL PRIMARY KEY,
    name         VARCHAR(255) NOT NULL UNIQUE
);

INSERT INTO frequency(name) VALUES ('1 jour sur 7'); --1
INSERT INTO frequency(name) VALUES ('2 jours sur 7'); --2
INSERT INTO frequency(name) VALUES ('3 jours sur 7'); --3
INSERT INTO frequency(name) VALUES ('4 jours sur 7'); --4
INSERT INTO frequency(name) VALUES ('5 jours sur 7'); --5
INSERT INTO frequency(name) VALUES ('6 jours sur 7'); --6
INSERT INTO frequency(name) VALUES ('1 fois tous les 15 jours'); --7
INSERT INTO frequency(name) VALUES ('Par roulement'); --8
INSERT INTO frequency(name) VALUES ('Selon fréquence de passage entretien'); --9
INSERT INTO frequency(name) VALUES ('Veille quotidienne'); --10
INSERT INTO frequency(name) VALUES ('4 fois par an + veille'); --11
INSERT INTO frequency(name) VALUES ('4 fois par an'); --12
INSERT INTO frequency(name) VALUES ('1 fois par mois'); --13
INSERT INTO frequency(name) VALUES ('2 fois par mois'); --14
INSERT INTO frequency(name) VALUES ('3 fois par mois'); --15
INSERT INTO frequency(name) VALUES ('4 fois par mois'); --16
INSERT INTO frequency(name) VALUES ('1 fois par an'); --17
INSERT INTO frequency(name) VALUES ('2 fois par an'); --18
INSERT INTO frequency(name) VALUES ('3 fois par an'); --19
INSERT INTO frequency(name) VALUES ('5 fois par an'); --20
INSERT INTO frequency(name) VALUES ('6 fois par an'); --21
