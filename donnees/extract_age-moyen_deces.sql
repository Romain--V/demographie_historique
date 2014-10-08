.output extract_age-moyen_deces.txt
select strftime('%Y-%m', date),COUNT(strftime('%m-%Y', date)),AVG(age_jour) from deces where age_jour is not "" group by strftime('%m-%Y', date);
.quit