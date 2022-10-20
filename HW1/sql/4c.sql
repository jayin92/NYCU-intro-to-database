select new_data."Province_State", sum(new_data."Confirmed") - sum(old_data."Confirmed") as new_cases
from public."10-11-2022" as new_data, public."10-01-2022" as old_data
where new_data."Province_State" = 'California' and old_data."Province_State" = 'California' 
and new_data."Admin2" = old_data."Admin2"
group by new_data."Province_State"4