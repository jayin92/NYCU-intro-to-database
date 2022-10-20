select distinct code."Continent_Name", "Country_Region", "Confirmed"
from (
	select "Country_Region", sum("Confirmed") as "Confirmed"
	from public."10-11-2022"
	group by "Country_Region"
) as total
inner join public."country-code" as code
on '%' || code."Country_Name" || '%' like '%' || split_part(total."Country_Region", ',', 1) || '%'
where "Confirmed" > 20000000 and "Continent_Name" = 'Asia'