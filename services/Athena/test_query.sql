SELECT description, count(*) from orderlog_schema.orderlogs_namthatman
where country='United Kingdom'
	and year='2021'
	and month='04'
group by description