library(nngeo)

context("st_nn")

test_that("'st_nn' points", {

  expect_equal({
    st_nn(
      cities,
      towns,
      k = 10
      )
  },
  list(c(70L, 99L, 60L, 15L, 36L, 56L, 193L, 142L, 90L, 82L),
       c(145L,175L, 57L, 144L, 29L, 55L, 21L, 64L, 138L, 24L),
       c(59L, 179L, 137L, 114L, 141L, 134L, 67L, 152L, 41L, 133L))
  )

  expect_equal({
    st_nn(
      cities,
      towns,
      k = 10,
      maxdist = 20000
    )
  },
  list(c(70L, 99L, 60L, 15L, 36L, 56L, 193L, 142L, 90L, 82L),
       c(145L,175L, 57L, 144L, 29L, 55L, 21L, 64L, 138L, 24L),
       c(59L, 179L, 137L, 114L, 141L, 134L, 67L, 152L, 41L, 133L))
  )

  expect_equal({
    st_nn(
      st_transform(cities, 32636),
      st_transform(towns, 32636),
      k = 10
      )
  },
  list(c(70L, 99L, 60L, 15L, 36L, 56L, 193L, 142L, 90L, 82L),
       c(145L, 175L, 57L, 144L, 29L, 55L, 21L, 64L, 138L, 24L),
       c(59L, 179L,137L, 114L, 141L, 134L, 67L, 152L, 41L, 133L))
  )

  expect_equal({
    st_nn(
      st_transform(cities, 32636),
      st_transform(towns, 32636),
      k = 10,
      maxdist = 20000
      )
  },
  list(c(70L, 99L, 60L, 15L, 36L, 56L, 193L, 142L, 90L, 82L),
       c(145L,175L, 57L, 144L, 29L, 55L, 21L, 64L, 138L, 24L),
       c(59L, 179L,137L, 114L, 141L, 134L, 67L, 152L, 41L, 133L))
  )

  }
)
