/*

Query para publicar a tabela.

Esse é o lugar para:
    - modificar nomes, ordem e tipos de colunas
    - dar join com outras tabelas
    - criar colunas extras (e.g. logs, proporções, etc.)

Qualquer coluna definida aqui deve também existir em `table_config.yaml`.

# Além disso, sinta-se à vontade para alterar alguns nomes obscuros
# para algo um pouco mais explícito.

TIPOS:
    - Para modificar tipos de colunas, basta substituir STRING por outro tipo válido.
    - Exemplo: `SAFE_CAST(column_name AS NUMERIC) column_name`
    - Mais detalhes: https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types

*/
SELECT 
SAFE_CAST(matricula AS STRING) matricula,
SAFE_CAST(nome_parlamentar AS STRING) nome_parlamentar,
SAFE_CAST(partido AS STRING) partido,
SAFE_CAST(servidor AS STRING) servidor,
SAFE_CAST(cargo AS STRING) cargo,
SAFE_CAST(lotacao AS STRING) lotacao,
SAFE_CAST(lotacao_tipo AS STRING) lotacao_tipo,
SAFE_CAST(regime AS STRING) regime
from basedosdados-staging.br_sp_alesp_staging.assessores as t