3a.
Finding the hour with the peak of collision:

[db2inst1@db2server_ebddae Databases_Assignment_1]$ db2 "with H as (select month(date) as month, hour(time) as hour, count(*) as cnt from cse532.collision group by cube(month(date), hour(time)) having hour(time) is not null) select hour from H where cnt=(select max(cnt) from H)"

HOUR       
-----------
         16

  1 record(s) selected.
  
Thus, 4 p.m. is the peak of collision.
  
3c.
Finding zip codes for top 10 most dangerous locations:

ZIP_CODE    LATITUDE                 LONGITUDE               
----------- ------------------------ ------------------------
      10012   +4.07203200000000E+001   -7.39940400000000E+001
      10012   +4.07241360000000E+001   -7.39926150000000E+001
      10018   +4.07595140000000E+001   -7.39992600000000E+001
      10022   +4.07606000000000E+001   -7.39643400000000E+001
      10036   +4.07589800000000E+001   -7.39959500000000E+001
      10036   +4.07608220000000E+001   -7.39983200000000E+001
      10453   +4.08618620000000E+001   -7.39128200000000E+001
      10459   +4.08203050000000E+001   -7.38908300000000E+001
      10474   +4.08168640000000E+001   -7.38827440000000E+001
      11201   +4.06960330000000E+001   -7.39845300000000E+001
      11226   +4.07608220000000E+001   -7.39983200000000E+001

  11 record(s) selected.

10036 and 11226 have the same latitude and longitude. It can be checked from https://www.gps-coordinates.net/ that 11226 is not correct. Hence, it has been eliminated.

Thus, the following are the most dangerous zip codes:
10012
10018
10022
10036
10453
10459
10474
11201
