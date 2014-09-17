.output extract_mariages.txt
select strftime('%Y-%m', date),COUNT(strftime('%m-%Y', date)) from mariages group by strftime('%m-%Y', date);
.quit