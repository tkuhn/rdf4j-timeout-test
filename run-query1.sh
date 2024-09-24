# This is the query:
#
# select * where {
#   { service <http://localhost:8080/rdf4j-server/repositories/repo2> {
#     values ?x {0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29}
#     filter(not exists {?a ?b ?x})
#   } }
#   { service <http://localhost:8080/rdf4j-server/repositories/repo3> {
#     values ?x {0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29}
#     filter(not exists {?a ?b ?x})
#   } }
# }

curl http://localhost:8080/rdf4j-server/repositories/repo1?query=select%20%2A%20where%20%7B%20%7Bservice%20%3Chttp%3A%2F%2Flocalhost%3A8080%2Frdf4j-server%2Frepositories%2Frepo2%3E%20%7B%20values%20%3Fx%20%7B0%201%202%203%204%205%206%207%208%209%2010%2011%2012%2013%2014%2015%2016%2017%2018%2019%2020%2021%2022%2023%2024%2025%2026%2027%2028%2029%7D%20filter%28not%20exists%20%7B%3Fa%20%3Fb%20%3Fx%7D%29%20%7D%20%7D%20%7Bservice%20%3Chttp%3A%2F%2Flocalhost%3A8080%2Frdf4j-server%2Frepositories%2Frepo3%3E%20%7B%20values%20%3Fx%20%7B0%201%202%203%204%205%206%207%208%209%2010%2011%2012%2013%2014%2015%2016%2017%2018%2019%2020%2021%2022%2023%2024%2025%2026%2027%2028%2029%7D%20filter%28not%20exists%20%7B%3Fa%20%3Fb%20%3Fx%7D%29%20%7D%20%7D%20%7D

