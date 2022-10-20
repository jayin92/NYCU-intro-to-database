select "Country_Region", "New_Cases"
from (
	select old_data."Country_Region", (new_data."Confirmed" - old_data."Confirmed") as "New_Cases"
	from (
		select "Country_Region", sum("Confirmed") as "Confirmed"
		from public."10-11-2022"
		group by "Country_Region"
	) as new_data,
	(
		select "Country_Region", sum("Confirmed") as "Confirmed"
		from public."10-01-2022"
		group by "Country_Region"
	) as old_data
	where old_data."Country_Region" = new_data."Country_Region"
) as res
where "New_Cases" > 100000
order by "New_Cases" desc