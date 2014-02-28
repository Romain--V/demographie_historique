#!/bin/bash
sqlite3 annecy94.bd ".read extract_baptemes.sql"
sqlite3 annecy94.bd ".read extract_mariages.sql"
sqlite3 annecy94.bd ".read extract_sepultures.sql"

sed 's/|/;/g' extract_baptemes.txt
sed 's/|/;/g' extract_mariages.txt
sed 's/|/;/g' extract_sepultures.txt
