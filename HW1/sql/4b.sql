select "Province_State", sum("Confirmed")
from public."10-01-2022"
where "Province_State" = 'California'
group by "Province_State"