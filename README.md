# T3 - SIASUS: Análise da Produção Ambulatorial de Ijuí/RS

## Sobre o projeto

Este trabalho foi desenvolvido utilizando dados do Sistema de Informações Ambulatoriais do SUS (SIASUS).

O objetivo foi organizar os dados em um banco de dados MySQL e realizar uma análise da produção ambulatorial do município de Ijuí/RS, utilizando Python para explorar as informações e criar gráficos.

## Fonte dos dados

Os dados foram obtidos no DATASUS, por meio dos arquivos de produção ambulatorial do SIA-SUS.

- **Base utilizada:** PARS
- **Período analisado:** agosto de 2026
- **Município de interesse:** Ijuí/RS
- **Código IBGE:** 431020

Conforme a orientação, foi utilizado apenas o mês mais recente disponível no momento da coleta.

## Organização dos arquivos

- `Scripts (SQL)`: contém os scripts utilizados para criação das tabelas, dimensão tempo, VIEW e consultas do banco.
- `T3_siasus_analise_ijui.ipynb`: notebook com o código Python, tratamento dos dados, análises e gráficos.

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
3. Executar os scripts SQL disponíveis na pasta `Scripts (SQL)`, respeitando a ordem de criação das tabelas e dependências.
4. Obter os arquivos de dados do DATASUS referentes a agosto de 2026 e realizar a importação da base PARS e das tabelas auxiliares, conforme necessário.
5. Criar a VIEW `pa_ijui` utilizando o script `view.sql`.
6. Instalar Python e Jupyter Notebook, além das bibliotecas utilizadas no projeto.
7. Abrir o arquivo `siasus_analise_visualização.ipynb` e executar as células para visualizar as análises e os gráficos.

**Observação:** para executar o notebook, é necessário ter o banco de dados configurado e a conexão com o MySQL ajustada para o ambiente utilizado.

## Resultados

A análise apresenta informações sobre os procedimentos realizados, estabelecimentos de saúde, diagnósticos, ocupações, sexo e faixa etária dos pacientes, além dos valores apresentados e aprovados durante o período analisado.

O trabalho permitiu conhecer melhor as características da produção ambulatorial de Ijuí no mês de agosto de 2026.
