/****** SSMS 中 SelectTopNRows 命令的指令碼  ******/
SELECT a.organization_id, c.city, b.school, a.response
  FROM [category].[dbo].[response] a 
	LEFT JOIN [category].[dbo].[school] b
	ON a.organization_id = b.organization_id
	LEFT JOIN [category].[dbo].[city] c
	ON a.organization_id = c.organization_id
  WHERE a.semester = 1112 AND a.organization_id = '011420'