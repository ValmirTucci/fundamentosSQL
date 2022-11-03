SELECT * FROM [Course]
SELECT * FROM [Student]
SELECT * FROM [StudentCourse]


INSERT INTO 
    [Student]
VALUES (
    'd9e0c872-93bd-457d-89a4-19028332eefc',
    'Valmir Tucci',
    'valmirizzo@gmail.com',
    '12345678999',
    '12345678',
    '1990-04-29 00:30',
    GETDATE()
)

INSERT INTO 
    [StudentCourse]
VALUES (
    '5f5a33f8-4ff3-7e10-cc6e-3fa000000000',
    'd9e0c872-93bd-457d-89a4-19028332eefc',
    '50',
    '0',
    '2020-01-13 12:35:54',
    GETDATE()
)