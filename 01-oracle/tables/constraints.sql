-- CONSTRAINTS

ALTER TABLE REZERWACJE
    ADD CONSTRAINT REZERWACJE_FK1 FOREIGN KEY
    (
        ID_OSOBY
    )
REFERENCES OSOBY
    (
        ID_OSOBY
    )
ENABLE;

ALTER TABLE REZERWACJE
    ADD CONSTRAINT REZERWACJE_FK2 FOREIGN KEY
    (
        ID_WYCIECZKI
    )
REFERENCES WYCIECZKI
    (
        ID_WYCIECZKI
    )
ENABLE;

ALTER TABLE REZERWACJE
    ADD CONSTRAINT REZERWACJE_CHK1 CHECK
    (status IN ('N','P','Z','A'))
ENABLE;