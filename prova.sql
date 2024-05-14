INSERT INTO Livros (titulo, autor,ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES('As Crônicas de Nárnia', 'C.S. Lewis', 1950, TRUE, "Fantasia", '978-0064471190', 'Harper Collins', 768, 'Francês'  );

UPDATE livros
SET disponivel= FALSE
WHERE ano_publicacao <1990;

UPDATE livros
SET editora = "Plume Books"
WHERE titulo = "1984";

DELETE FROM livros
WHERE idioma= "Francês" and ano_publicacao<2000;

SELECT * FROM livros
WHERE quantidade_paginas>600;

SELECT categoria, count(categoria) FROM livros 
GROUP BY categoria;

SELECT * FROM livros
ORDER BY id DESC
LIMIT 5;

SELECT avg(quantidade_paginas) AS 'média de páginas' FROM livros
WHERE disponivel = TRUE;

SELECT * FROM livros
ORDER BY ano_publicacao DESC;

SELECT * FROM livros
WHERE titulo LIKE 'S%' and ano_publicacao BETWEEN 1970 AND 1990;