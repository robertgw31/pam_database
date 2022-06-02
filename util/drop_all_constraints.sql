\connect pam
set schema  'public';


CREATE OR ALTER PROC DropObject @ObjectType varchar(100), @objectName varchar(1000)
AS

DECLARE 
    @sql1 text;
    @sql2 VARCHAR(100);
BEGIN
      @sql1 text = N'';
      @sql2 VARCHAR(100) = N'';

      SELECT @sql1 += N'
        ALTER TABLE ' + QUOTENAME(OBJECT_SCHEMA_NAME(parent_object_id))
            + '.' + QUOTENAME(OBJECT_NAME(parent_object_id)) +
            ' DROP CONSTRAINT ' + QUOTENAME(name) + ';'
      FROM sys.foreign_keys WHERE referenced_object_id = object_id(@objectName)

      select @sql2 = 'drop ' + @ObjectType  + ' ' + @objectName;
      
      EXEC sp_executesql @sql1;
      EXEC sp_executesql @sql2;
END
go

create or alter proc DropTable @tableName nvarchar(1000)
AS
BEGIN
      exec DropObject 'table', @tableName;
end
go




