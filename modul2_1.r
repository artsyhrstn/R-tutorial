library(lubridate)
> today()
[1] "2024-01-21"
> now()
[1] "2024-01-21 14:10:47 +07"
> ymd("2024-01-01")
[1] "2024-01-01"
> mdy("January 20th, 2021")
[1] "2021-01-20"
> mdy("January 01st, 2024")
[1] "2024-01-01"
> dmy("01-Jan-2024")
[1] "2024-01-01"
> # R akan selalu menghasilkan format yyyy-mm-dd.
> # Komponen tanggal dan waktu
> ymd_hms("2024-01-01 09:10:11")
[1] "2024-01-01 09:10:11 UTC"
> mdy_hm("01/01/2024 10:01")
[1] "2024-01-01 10:01:00 UTC"
> # Beralih di antara objek tanggal dan waktu
> as_date(now())
[1] "2024-01-21"

> # Data Frame
data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))

> matrix(c(3:8), nrow = 2)
     [,1] [,2] [,3]
[1,]    3    5    7
[2,]    4    6    8