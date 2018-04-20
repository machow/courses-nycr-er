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

multiple_choice_responses_base <- 
  read.csv("/usr/local/share/datasets/multipleChoiceResponses.csv", stringsAsFactors = FALSE)

# note, trying to print the data will crash DataCamp, since it's too big :/
nrow(multiple_choice_responses_base)

# but not as a tibble
as_tibble(multiple_choice_responses_base)
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


`@instructions`

`@hint`

`@pre_exercise_code`
```{r}
multiple_choice_responses_base <- 
  read.csv("/usr/local/share/datasets/multipleChoiceResponses.csv", stringsAsFactors = FALSE)
```

`@sample_code`
```{r}
library(dplyr)

# over one column
multiple_choice_responses_base %>%
  summarize(number_nas = sum(is.na(Country)))

# How do you do this for every column?
multiple_choice_responses_base %>%
  purrr::map_df(~sum(is.na(.)))

# No NAs - too good to be true?
multiple_choice_responses_base %>%
  dplyr::count(StudentStatus)

# Use na_if to change "" to NA
fixed <- multiple_choice_responses_base %>%
  na_if("") %>%
  count(mpg)
```

`@solution`
```{r}

```

`@sct`
```{r}

```

---
## Step 3, examine numeric columns

```yaml
type: NormalExercise
key: 06d22dda5a
lang: r
xp: 100
skills: 1
```


`@instructions`

`@hint`

`@pre_exercise_code`
```{r}
multiple_choice_responses_base <- 
  read.csv("/usr/local/share/datasets/multipleChoiceResponses.csv", stringsAsFactors = FALSE)
```

`@sample_code`
```{r}
library(dplyr)

# how can I get numeric columns quickly?
multiple_choice_responses_base %>%
  select_if(is.numeric) %>%
  skimr::skim()
```

`@solution`
```{r}

```

`@sct`
```{r}

```

---
## Step 4, examine a single column

```yaml
type: NormalExercise
key: 05bed41249
lang: r
xp: 100
skills: 1
```

Problem: it has multiple answers in the each row

`@instructions`

`@hint`

`@pre_exercise_code`
```{r}
multiple_choice_responses_base <- 
  read.csv("/usr/local/share/datasets/multipleChoiceResponses.csv", stringsAsFactors = FALSE)
```

`@sample_code`
```{r}
library(dplyr)

# TODO: split multiple answers from each row
multiple_choice_responses_base %>%
  count(WorkMethodsSelect, sort = TRUE)
  
nested_workmethods <- multiple_choice_responses_base %>%
  select(WorkMethodsSelect) %>%
  filter(!is.na(WorkMethodsSelect)) %>%
  # str_split to split answers
  mutate(work_method = stringr::str_split(WorkMethodsSelect, ",")) %>%
  # unnest
  tidyr::unnest() %>%
  as_tibble()

```

`@solution`
```{r}

```

`@sct`
```{r}

```
