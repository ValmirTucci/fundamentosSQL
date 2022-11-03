/*SELECT
    [Id],
    [Title],
    [Url],
    (SELECT COUNT([CareerId]) FROM [CareerItem] WHERE [CareerId] = [Id]) AS [Courses]
FROM
    [Career] - Modo menos recomendado*/

CREATE OR ALTER VIEW vwCareers AS
    SELECT
        [Career].[Title],
        [Career].[Id],
        [Career].[Url],
        COUNT([Id]) AS [Courses]
    FROM
        [Career]
        INNER JOIN [CareerItem] ON [CareerItem].[CareerId] = [Career].[Id]
    GROUP BY
        [Career].[Title],
        [Career].[Id],
        [Career].[Url]