---
title: Lesser Known Stars of the Tidyverse
description: lesser known stars
---

## Step 1: printing your data

```yaml
type: NormalExercise
lang: r
xp: 100
skills: 1
key: 99f5ab484c
```

Problem #1, printing displays too much information.

`@instructions`


`@hint`


`@pre_exercise_code`

```{r}

```

`@sample_code`

```{r}
library(tibble)

as_tibble(mtcars)
```

`@solution`

```{r}

```

`@sct`

```{r}

```

---
## Step 2: examine your NAs

```yaml
type: NormalExercise
key: 944f71ae22
lang: r
xp: 100
skills: 1
```

How do you do this for every column?

`@instructions`

`@hint`

`@pre_exercise_code`
```{r}

```

`@sample_code`
```{r}
library(dplyr)

# over one column
mtcars %>%
  summarize(number_nas = sum(is.na(mpg)))

mtcars %>%
  purrr::map_df(~sum(is.na(.)))
```

`@solution`
```{r}

```

`@sct`
```{r}

```
