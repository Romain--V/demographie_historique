.output extract_sepultures.txt
select strftime('%Y-%m', date),COUNT(strftime('%m-%Y', date)) from deces group by strftime('%m-%Y', date);
.quit