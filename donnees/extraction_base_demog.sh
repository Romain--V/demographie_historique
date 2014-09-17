#!/bin/bash
sqlite3 demog_annecy_169X.bd ".read extract_baptemes.sql"
sqlite3 demog_annecy_169X.bd ".read extract_mariages.sql"
sqlite3 demog_annecy_169X.bd ".read extract_sepultures.sql"

sed 's/|/;/g' extract_baptemes.txt | sort > baptemes.csv
#rm extract_baptemes.txt
sed 's/|/;/g' extract_mariages.txt | sort > mariages.csv
#rm extract_mariages.txt
sed 's/|/;/g' extract_sepultures.txt | sort > sepultures.csv
#rm extract_sepultures.txt
