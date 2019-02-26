LOAD FROM \"zipcodepopulation.csv\" 
OF  DEL METHOD P ( 1, 2, 3, 4 ) 
MESSAGES \"messages2.txt\" 
INSERT INTO CSE532.zipcensus ( rank, population_density, zip, population)
