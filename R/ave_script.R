
x <- c(1, 1, 2, 3, 3, 3)
dots <- list(c(1, 1, 1, 2, 2, 2))
FUN <- mean
cond <- !length(dots)
if (cond) {
  x[] <- FUN(x)
} else {
  g <- do.call(interaction, dots)
  split(x, g) <- lapply(split(x, g), FUN)
}
ave1 <- x

#x <- c(1, 1, 2, 3, 3, 3)
if (!is.vector(x) && !is.list(x))
  stop("'x' must be a vector of an atomic type")
n <- length(x)
if (n == 0L) {
  rle1 <- structure(list(lengths = integer(), values = x), class = "rle")
} else {
  y <- x[-1L] != x[-n]
  i <- c(which(y | is.na(y)), n)
  rle1 <- structure(list(lengths = diff(c(0L, i)), values = x[i]),
                    class = "rle")
}
list(ave1, rle1)
