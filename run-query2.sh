# This is the query:
#
# select * where {
#   { service <http://localhost:8080/rdf4j-server/repositories/repo2> {
#     values ?x {0 1 2 3 4 5 6 7 8 9} values ?y {0 1 2 3 4 5 6 7 8 9} values ?z {0 1 2 3 4 5 6 7 8 9}
#     bind(((100*?x)+(10*?y)+?z) as ?n)
#     filter(not exists {?a ?b ?n})
#   } }
#   { service <http://localhost:8080/rdf4j-server/repositories/repo3> {
#     values ?x {0 1 2 3 4 5 6 7 8 9} values ?y {0 1 2 3 4 5 6 7 8 9} values ?z {0 1 2 3 4 5 6 7 8 9}
#     bind(((100*?x)+(10*?y)+?z) as ?n)
#     filter(not exists {?a ?b ?n})
#   } }
# }

curl http://localhost:8080/rdf4j-server/repositories/repo1?query=select%20%2A%20where%20%7B%20%7Bservice%20%3Chttp%3A%2F%2Flocalhost%3A8080%2Frdf4j-server%2Frepositories%2Frepo2%3E%20%7B%20values%20%3Fx%20%7B0%201%202%203%204%205%206%207%208%209%7D%20values%20%3Fy%20%7B0%201%202%203%204%205%206%207%208%209%7D%20values%20%3Fz%20%7B0%201%202%203%204%205%206%207%208%209%7D%20bind%28%28%28100%2A%3Fx%29%2B%2810%2A%3Fy%29%2B%3Fz%29%20as%20%3Fn%29%20filter%28not%20exists%20%7B%3Fa%20%3Fb%20%3Fn%7D%29%20%7D%20%7D%20%7Bservice%20%3Chttp%3A%2F%2Flocalhost%3A8080%2Frdf4j-server%2Frepositories%2Frepo3%3E%20%7B%20values%20%3Fx%20%7B0%201%202%203%204%205%206%207%208%209%7D%20values%20%3Fy%20%7B0%201%202%203%204%205%206%207%208%209%7D%20values%20%3Fz%20%7B0%201%202%203%204%205%206%207%208%209%7D%20bind%28%28%28100%2A%3Fx%29%2B%2810%2A%3Fy%29%2B%3Fz%29%20as%20%3Fn%29%20filter%28not%20exists%20%7B%3Fa%20%3Fb%20%3Fn%7D%29%20%7D%20%7D%20%7D

