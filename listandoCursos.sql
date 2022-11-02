CREATE OR ALTER VIEW vwCourses AS

SELECT 
    [Course].[Id],
    [Course].[Tag],
    [Course].[Title],
    [Course].[Url],
    [Course].[Summary],
    [Category].[Title] AS [Category],
    [Author].[Name] AS [Author]
 FROM 
    [Course]
    INNER JOIN [Category] ON [Course].[CategoryId] = [Category].[Id] --Junção de informações da tabela category com course
    INNER JOIN [Author] ON [Course].[AuthorId] = [Author].[Id] --Junção de informações da tabela author com course
WHERE   
    [Active] = 1 --Filtrando os cursos que estão ativos
/*ORDER BY
    [CreateDate] DESC --Ordenando do maior para o menor*/

    -- SELECT * FROM vwCourses (consulta da VIEW criada)

