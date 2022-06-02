CREATE or alter FUNCTION fn_category_id_cte(@accountId uniqueidentifier, @scope nvarchar(100), @rootId uniqueidentifier)
  returns table as
  return
    (
  WITH MyCTE
         AS (
      SELECT c.id,
             c.parentId,
             c.name
      FROM pam..category c
      where c.accountId = @accountId and scope = @scope
      and ((@rootId is null and c.parentId is null) or (@rootId is not null and c.id = @rootId))
      UNION ALL
      SELECT c.id,
             c.parentId,
             c.name
      FROM pam..category c
             INNER JOIN MyCTE ON c.parentId = MyCTE.id
      WHERE c.accountId = @accountId  and scope = @scope and c.parentId IS NOT NULL
    )
  select x.id
  from MyCTE x

    );

go
grant select on fn_category_id_cte to pam;
