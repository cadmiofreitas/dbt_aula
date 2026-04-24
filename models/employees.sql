

with calc_employees as (
select
date_part(year, current_date) - date_part(year, birth_date) as age,
date_part(year, current_date) - date_part(year, hire_date) tempo_de_servico,
first_name + ' ' + last_name as nome, *
from {{source('sources','employees')}}

)

select * from calc_employees