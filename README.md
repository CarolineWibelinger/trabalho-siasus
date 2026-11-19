# T3 - SIASUS: Análise da Produção Ambulatorial de Ijuí/RS

## Sobre o projeto

Este trabalho foi desenvolvido para a disciplina de Programação para Ciência de Dados, utilizando dados do Sistema de Informações Ambulatoriais do SUS (SIA-SUS).

O objetivo foi organizar os dados em um banco de dados MySQL e realizar uma análise da produção ambulatorial do município de Ijuí/RS, utilizando Python para explorar as informações e criar gráficos.

## Fonte dos dados

Os dados foram obtidos no DATASUS, por meio dos arquivos de produção ambulatorial do SIASUS.

- **Base utilizada:** PARS
- **Período analisado:** agosto de 2026
- **Município de interesse:** Ijuí/RS
- **Código IBGE:** 431020

Conforme a orientação para este trabalho, foi utilizado apenas o mês mais recente disponível no momento da coleta.

Para acessar os arquivos utilizados, entre na página de [Transferência de Arquivos do DATASUS](https://datasus.saude.gov.br/transferencia-de-arquivos/) e siga o caminho:

**SIASUS → Dados → PA → 2026 → Agosto → RS**

Os arquivos originais não estão incluídos neste repositório. É necessário baixá-los diretamente do DATASUS e realizar a importação para o banco de dados MySQL.

Os scripts SQL disponibilizados aqui criam apenas a estrutura das tabelas (`CREATE TABLE`). Eles não contêm os registros dos dados, que devem ser obtidos separadamente e importados para as respectivas tabelas.

## Organização dos arquivos

- `04 - Scripts (SQL)`: contém os scripts utilizados para criação das tabelas, dimensão tempo, VIEW e consultas do banco.
- `Analise e Visualizacao (Python)`: contém o notebook com o código Python, preparação dos dados, análises e gráficos.

**Observação:** os scripts de criação das tabelas disponibilizados neste repositório contêm apenas os comandos `CREATE TABLE`, ou seja, criam a estrutura das tabelas, mas não incluem os registros. Os dados devem ser obtidos separadamente no DATASUS e importados para o banco de dados MySQL.

## Tecnologias utilizadas

- MySQL e MySQL Workbench
- Python
- Jupyter Notebook
- Pandas
- Matplotlib
- Seaborn

## Como executar

1. Instalar o MySQL Server e o MySQL Workbench.
2. Criar o banco de dados `siasus`.
3. Obter no DATASUS os arquivos de dados referentes a agosto de 2026, incluindo a base PARS e as tabelas auxiliares necessárias.
4. Executar os scripts SQL disponíveis na pasta `04 - Scripts (SQL)` para criar as estruturas das tabelas, respeitando a ordem de criação e suas dependências.
5. Importar os dados obtidos do DATASUS para as respectivas tabelas do banco de dados.
6. Executar o script `view.sql` para criar a VIEW `pa_ijui`.
7. Instalar Python e Jupyter Notebook, além das bibliotecas utilizadas no projeto.
8. Abrir o notebook `T3_siasus_analise_ijui.ipynb` e executar as células para visualizar as análises e os gráficos.

**Observação:** para executar o notebook, é necessário ter o banco de dados configurado, os dados importados e a conexão com o MySQL ajustada para o ambiente utilizado.

## Resultados

A análise apresenta informações sobre os procedimentos realizados, estabelecimentos de saúde, diagnósticos, ocupações, sexo e faixa etária dos pacientes, além dos valores apresentados e aprovados durante o período analisado.

O trabalho permitiu conhecer melhor as características da produção ambulatorial de Ijuí no mês de agosto de 2026.
