.output extract_baptemes.txt
select strftime('%m-%Y', date),COUNT(strftime('%m-%Y', date)) from baptemes group by strftime('%m-%Y', date);
.quit