# if / for
x <- NULL;
for (u in 1:30) {
  p = 0
  if (u %% 3 == 0) p = 2
  if (u %% 5 == 0) p = 1
  if (p > 0) x = c(x, u^p)
}

print(x)

# function
upx <- function(ss) {
  x <- NULL;
  for (u in ss) {
    p = 0
    if (u %% 3 == 0) p = 2
    if (u %% 5 == 0) p = 1
    if (p > 0) x = c(x, u^p)
  }
  x
}

upx(c(1,2,3,5,0,4,15))