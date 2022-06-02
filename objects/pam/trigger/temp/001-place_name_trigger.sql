-- trigger: placeName
\connect pam
set schema 'public';

drop trigger if exists placeName;
CREATE TRIGGER placeName
    ON place
    AFTER  UPDATE
    NOT FOR REPLICATION
    AS

    update a set
        a.placeName = i.name
    from
        inserted as i
            join asset a on a.accountId = i.accountId and a.placeId = i.id;





