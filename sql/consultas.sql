USE siasus;

-- Ver as tabelas criadas no banco
SHOW TABLES;

-- Ver a estrutura da tabela principal
DESCRIBE pars;

-- Ver a quantidade de registros importados
SELECT COUNT(*) AS total_registros
FROM pars;

-- Ver a quantidade de registros da VIEW de Ijuí
SELECT COUNT(*) AS total_registros_ijui
FROM pa_ijui;

-- Ver os procedimentos com maior quantidade aprovada
SELECT
    Procedimento,
    SUM(pa_qtdapr) AS quantidade_aprovada
FROM pa_ijui
GROUP BY Procedimento
ORDER BY quantidade_aprovada DESC
LIMIT 10;

-- Ver os valores totais apresentados e aprovados
SELECT
    SUM(pa_valpro) AS valor_apresentado,
    SUM(pa_valapr) AS valor_aprovado
FROM pa_ijui;