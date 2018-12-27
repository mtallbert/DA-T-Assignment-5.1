# 1. How many vowels are there in the names of USA States?
## using the sates existent in R

library(stringr)

vowels = c("a", "e", "i", "o", "u")
vowels_count =vector(mode = "integer", length = 5)
for (i in seq_along(vowels)) {
  v_count = str_count(tolower(state.name), vowels[i])
  vowels_count[i] = sum(v_count)
}

names(vowels_count) = vowels
sum(vowels_count)

# 2. Visualize the vowels distribution.
barplot(height = vowels_count,horiz = FALSE,col = 'blue')

