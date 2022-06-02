-- trigger: categoryName
\connect pam
set schema 'public';

drop trigger if exists categoryName;ß
CREATE TRIGGER categoryName
    ON category
    AFTER  UPDATE
    NOT FOR REPLICATION
    AS

    update a set
        a.categoryName = i.name
    from
        inserted as i
            join asset a on a.accountId = i.accountId and a.categoryId = i.id;





