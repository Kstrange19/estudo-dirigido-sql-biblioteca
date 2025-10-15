SELECT
    nome
FROM
    editoras
WHERE editora_id IN (SELECT editora_id FROM livros GROUP BY editora_id HAVING COUNT(livro_id) > 2);