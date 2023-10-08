library(DBI)
library(RPostgres)
# Replace with your PostgreSQL server details
db_host <- "192.168.2.20"
db_port <- 5433
db_name <- "divvy"
db_user <- "tlw"
db_password <- "M0joN1xonSkidRoper"
db_table <- "divvy_sample"
db_schema <- "public"

con <- dbConnect(RPostgres::Postgres(), dbname = db_name,
                 host = db_host,
                 port = db_port,
                 user = db_user,
                 password = db_password)

```

```{r}
# write to table (please watch video to fully understand overwrite vs append)
dbWriteTable(conn = con, name = Id(schema = db_schema, table = db_table), value = df_frac )
# test to see if the data is in DB
test <- dbGetQuery(conn = con, "SELECT * FROM public.divvy_sample LIMIT 100")
test
dbDisconnect(con)
`
