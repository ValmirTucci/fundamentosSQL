SELECT * FROM [Student]
DECLARE @StudentId UNIQUEIDENTIFIER = 'd9e0c872-93bd-457d-89a4-19028332eefc'
SELECT 
    [StudentCourse].Progress,
    [Student].[Name] AS [Student], 
    [Course].[Title] AS [Course],
    [StudentCourse].[Progress],
    [StudentCourse].[LastUpdateDate]

FROM    
    [StudentCourse]
    INNER JOIN [Student] ON [StudentCourse].[StudentId] = [Student].[Id]
    INNER JOIN [Course] ON [StudentCourse].[CourseId] = [Course].[Id]
WHERE 
    [studentCourse].[StudentId] = @StudentId
    AND [StudentCourse].[Progress] < 100
    AND [StudentCourse].[Progress] > 0
ORDER BY [StudentCourse].[LastUpdateDate]