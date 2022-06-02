CREATE or alter FUNCTION fn_places_id_cte(@accountId uniqueidentifier, @rootId uniqueidentifier)
  returns table as
  return
    (
      WITH MyCTE
             AS (
          SELECT p.id,
                 p.parentId,
                 p.name
          FROM pam..place p
          where p.accountId = @accountId and
            ((@rootId is null and p.parentId is null) or (@rootId is not null and p.id = @rootId))
          UNION ALL
          SELECT p.id,
                 p.parentId,
                 p.name
          FROM pam..place p
                 INNER JOIN MyCTE ON p.parentId = MyCTE.id
          WHERE p.accountId = @accountId and p.parentId IS NOT NULL
        )
      select x.id
      from MyCTE x
  );
go

grant select on fn_places_id_cte to pam;
