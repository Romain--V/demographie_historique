.output extract_nb-deces-enfant_10ans_mois.txt
select strftime('%Y-%m', date),COUNT(strftime('%m-%Y', date)) from deces where age_jour < "365" group by strftime('%m-%Y', date);
.quit