.output extract_sepultures.txt
select strftime('%m-%Y', date),COUNT(strftime('%m-%Y', date)) from sepultures group by strftime('%m-%Y', date);
.quit