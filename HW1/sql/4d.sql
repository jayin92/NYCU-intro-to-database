select "Country_Region", "Confirmed"
from (
	select "Country_Region", sum("Confirmed") as "Confirmed"
	from public."10-11-2022"
	group by "Country_Region"
) as total
where "Confirmed" > 20000000