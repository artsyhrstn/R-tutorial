# First Calculations
penjualan_q1 <- 20000.75
penjualan_q2 <- 35000.21
midyear_sales <- penjualan_q1 + penjualan_q2
yearend_sales <- midyear_sales * 2

# Boolean Logic
# AND (sometimes represented as & or && in R)
# OR (sometimes represented as | or || in R)
# NOT (!)
TRUE & TRUE
TRUE & FALSE
FALSE & TRUE
FALSE & FALSE
# Ilustrasi
x <- 10
x > 3 & x < 12

x <- 20

# OR OPERATOR
TRUE | TRUE
TRUE | FALSE
FALSE | TRUE
FALSE | FALSE
# ada TRUE salah satu diantaranya = output akan TRUE
y <- 7
y < 8 | y > 16 # TRUE
y <- 12
y < 8 | y > 16 # FALSE

# NOT OPERATOR
!TRUE
!FALSE


# CONDITIONAL STATEMENTS
# IF STATEMENTS
x <- 4
if (x > 0) {
  print ("x is positive number")
}

# ELSE STATEMENTS
x <- -7
if (x > 0){
  print ("x is positive number")
} else {
  print ("x is negative number or zero")
}

# ELSE IF STATEMENT
x <- -1
# run code
if (x < 0){
  print ("x is negative number")
} else if (x==0) {
  print ("x is zero")
} else {
  print ("x is positive number")
}
