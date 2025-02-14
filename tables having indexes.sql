SELECT name
FROM sys.tables 
WHERE OBJECTPROPERTY(object_id,'IsIndexed') = 0

SELECT
  name
FROM
  SYSOBJECTS
WHERE
  xtype = 'U' and name not in (SELECT name
FROM sys.tables 
WHERE OBJECTPROPERTY(object_id,'IsIndexed') = 0);
GO