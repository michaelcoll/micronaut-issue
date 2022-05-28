---------
-- offre
CREATE TABLE offer
(
    offer_id BIGSERIAL PRIMARY KEY,
    name     VARCHAR(500) NOT NULL UNIQUE
);

INSERT INTO offer(name) VALUES ('Service des bacs poubelles'); --1
INSERT INTO offer(name) VALUES ('Bacs a ordures ménagères'); --2
INSERT INTO offer(name) VALUES ('Local poubelle'); --3
INSERT INTO offer(name) VALUES ('Hall d''entrée'); --4
INSERT INTO offer(name) VALUES ('Vitrerie spécifique du hall'); --5
INSERT INTO offer(name) VALUES ('Paliers d''étages'); --6
INSERT INTO offer(name) VALUES ('Vitrerie paliers'); --7
INSERT INTO offer(name) VALUES ('Montée escalier'); --8
INSERT INTO offer(name) VALUES ('Vitrerie montée d''escalier'); --9
INSERT INTO offer(name) VALUES ('Accès sous-sols, sas accès garages'); --10
INSERT INTO offer(name) VALUES ('Circulations sous-sols'); --11
INSERT INTO offer(name) VALUES ('Abords'); --12
INSERT INTO offer(name) VALUES ('Cour'); --13
INSERT INTO offer(name) VALUES ('Pelouses, allées piétonnes, parkings'); --14
INSERT INTO offer(name) VALUES ('Parties communes'); --15
INSERT INTO offer(name) VALUES ('Locaux vélos'); --16
INSERT INTO offer(name) VALUES ('Caves'); --17
INSERT INTO offer(name) VALUES ('Rampes et rambardes'); --18
INSERT INTO offer(name) VALUES ('Ne le souhaitons pas, mais si la neige est là'); --19
INSERT INTO offer(name) VALUES ('Ampoules'); --20
INSERT INTO offer(name) VALUES ('Garages'); --21

---------
-- prestation
CREATE TABLE service
(
    service_id BIGSERIAL PRIMARY KEY,
    offer_id   BIGINT,
    name       VARCHAR(500) NOT NULL,

    CONSTRAINT offer_fk FOREIGN KEY (offer_id) REFERENCES offer (offer_id)
);

INSERT INTO service(offer_id, name) VALUES (1, 'Poubelles grises');
INSERT INTO service(offer_id, name) VALUES (1, 'Poubelles tri sélectif');

INSERT INTO service(offer_id, name) VALUES (2, 'Lavage et désinfection');
INSERT INTO service(offer_id, name) VALUES (2, 'Pose de sac plastique dans les bacs');

INSERT INTO service(offer_id, name) VALUES (3, 'Lavage et désinfection');

INSERT INTO service(offer_id, name) VALUES (4, 'Boîtes aux lettres');
INSERT INTO service(offer_id, name) VALUES (4, 'Tapis');
INSERT INTO service(offer_id, name) VALUES (4, 'Fosse tapis');
INSERT INTO service(offer_id, name) VALUES (4, 'Sols');
INSERT INTO service(offer_id, name) VALUES (4, 'Perron');
INSERT INTO service(offer_id, name) VALUES (4, 'Miroir');
INSERT INTO service(offer_id, name) VALUES (4, 'Ascenseur (intégral)');
INSERT INTO service(offer_id, name) VALUES (4, 'Vitre porte entrée');
INSERT INTO service(offer_id, name) VALUES (4, 'Corbeille prospectus');
INSERT INTO service(offer_id, name) VALUES (4, 'Surfaces planes horizontales');
INSERT INTO service(offer_id, name) VALUES (4, 'Interrupteurs');
INSERT INTO service(offer_id, name) VALUES (4, 'Interphone');
INSERT INTO service(offer_id, name) VALUES (4, 'Toiles d’araignées');
INSERT INTO service(offer_id, name) VALUES (4, 'Cuivres');

INSERT INTO service(offer_id, name) VALUES (5, 'Impostes et baies vitrées du hall');

INSERT INTO service(offer_id, name) VALUES (6, 'Sols');
INSERT INTO service(offer_id, name) VALUES (6, 'Moquette');
INSERT INTO service(offer_id, name) VALUES (6, 'Ascenseur, portes et rails');
INSERT INTO service(offer_id, name) VALUES (6, 'Surfaces planes horizontales');

INSERT INTO service(offer_id, name) VALUES (7, 'Vitres accessibles Paliers');

INSERT INTO service(offer_id, name) VALUES (8, 'Sols');
INSERT INTO service(offer_id, name) VALUES (8, 'Rampes et mains courantes.');
INSERT INTO service(offer_id, name) VALUES (8, 'Toiles d’araignées');

INSERT INTO service(offer_id, name) VALUES (9, 'Vitres montée escalier');

INSERT INTO service(offer_id, name) VALUES (10, 'Escaliers');
INSERT INTO service(offer_id, name) VALUES (10, 'Sols');
INSERT INTO service(offer_id, name) VALUES (10, 'Rampes et mains courantes');
INSERT INTO service(offer_id, name) VALUES (10, 'Toiles d’araignées');

INSERT INTO service(offer_id, name) VALUES (11, 'Rampe d''accès véhicules des sous-sols');
INSERT INTO service(offer_id, name) VALUES (11, 'Voies de circulation des sous-sols');

INSERT INTO service(offer_id, name) VALUES (12, 'Papiers et petits détritus aux abords immédiats des entrées.');

INSERT INTO service(offer_id, name) VALUES (13, 'Sols');

INSERT INTO service(offer_id, name) VALUES (14, 'Papiers, petits détritus');
INSERT INTO service(offer_id, name) VALUES (14, 'Corbeilles');

INSERT INTO service(offer_id, name) VALUES (15, 'Portes d''accès communes et techniques');

INSERT INTO service(offer_id, name) VALUES (16, 'Sols');

INSERT INTO service(offer_id, name) VALUES (17, 'Couloirs et toiles d''araignées');

INSERT INTO service(offer_id, name) VALUES (18, 'Ferronnerie');

INSERT INTO service(offer_id, name) VALUES (20, 'Changement inclus au contrat sur facturation');
INSERT INTO service(offer_id, name) VALUES (20, 'Changement non inclus au contrat');
INSERT INTO service(offer_id, name) VALUES (20, 'Stock fourni par la copropriété');

INSERT INTO service(offer_id, name) VALUES (21, 'Voies de circulation communes à l''aide d''une machine autoportée');
INSERT INTO service(offer_id, name) VALUES (21, 'Voies de circulation communes à l''aide d''une machine autoportée');
INSERT INTO service(offer_id, name) VALUES (21, 'Bacs à sables');
INSERT INTO service(offer_id, name) VALUES (21, 'Blocs lumineux de secours');
INSERT INTO service(offer_id, name) VALUES (21, 'Extincteurs');
INSERT INTO service(offer_id, name) VALUES (21, 'Toiles d''araignées parties communes générales');
