SELECT l.titulo AS "Título do Livro",
    CASE
        -- Se não houver registro de empréstimo (E.livro_id IS NULL)
        -- OU SE a data de devolução estiver preenchida (E.data_devolucao IS NOT NULL)
        WHEN e.livro_id IS NULL OR e.data_devolucao IS NOT NULL THEN 'Disponível'
        
        -- Caso contrário, se há um registro de empréstimo E a data de devolução está VAZIA
        ELSE 'Emprestado'
    END AS Status
FROM livros l LEFT JOIN emprestimos e ON l.livro_id = e.livro_id ORDER BY l.titulo;