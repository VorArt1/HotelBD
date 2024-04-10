

CREATE TABLE uslugi (
  ID_USLUGI serial,
  NAIMEN varchar,
  CENA int DEFAULT NULL,
  PRIMARY KEY (ID_USLUGI)
);

CREATE TABLE client (
  ID_CLIENT serial,
  FAM varchar,
  NAME varchar,
  TEL varchar,
  PASSPORT varchar,
  PRIMARY KEY (ID_CLIENT)
); 

CREATE TABLE nomer (
  ID_NOMER serial,
  STOIMSUTK int DEFAULT NULL,
  TIPNOMER int DEFAULT NULL,
  Komnat int DEFAULT NULL,
  ETAH varchar,
  Opis varchar,
  PRIMARY KEY (ID_NOMER)
);

CREATE TABLE bron (
  ID_BRON serial,
  DATABRON date DEFAULT NULL,
  KOD_CLIENT int DEFAULT NULL,
  KOD_NOMER int DEFAULT NULL,
  OKONBRON date DEFAULT NULL,
  KOLVDN int DEFAULT NULL,
  PRIMARY KEY (ID_BRON),
  FOREIGN KEY (KOD_CLIENT) REFERENCES client (ID_CLIENT),
  FOREIGN KEY (KOD_NOMER) REFERENCES nomer (ID_NOMER)
);

CREATE TABLE dgv (
  ID_dog serial,
  kod_bron int DEFAULT NULL,
  kod_us int DEFAULT NULL,
  PRIMARY KEY (ID_dog),
  CONSTRAINT FK_DGV_1 FOREIGN KEY (kod_bron) REFERENCES bron (ID_BRON),
  CONSTRAINT FK_DGV_2 FOREIGN KEY (kod_us) REFERENCES uslugi (ID_USLUGI)
);

