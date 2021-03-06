
echo "CREATE TABLE DEPARTEMENT"
sudo -u postgres psql -d dashboard -c "DROP TABLE IF EXISTS departement;"
echo "DROP TABLE OK"
sudo -u postgres psql -d dashboard -f "sql/create_table_departement.sql"
echo "CREATE TABLE OK"
datafolder="$(dirname "$(pwd)")"/utils/
sudo -u postgres psql -d dashboard -c "\copy departement(dep, reg, cheflieu, tncc, ncc, nccenr, libelle) FROM '"$datafolder"departement2019.csv' delimiter ',' csv header encoding 'UTF8';"
