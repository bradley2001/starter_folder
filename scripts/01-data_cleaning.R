#### Preamble ####
# Purpose: Clean the data downloaded CPS1985
# Author: Bradley Wong
# Data:26 APRIL 2021
# Contact: Bradleyrobert.wong@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
```{r, echo=FALSE, include=FALSE, message=FALSE}

library(readxl)
library(tidyverse)
library(janitor)
library(tinytex)
library(car)


```
```{r, echo=FALSE, include=FALSE, message=FALSE}
data_tran <- CPS1985 %>%
  mutate(wage_trans = log(wage),
         age_trans = log(age))
model3 <- lm(data_tran$wage_trans ~ data_tran$age_trans + data_tran$education + data_tran$gender + data_tran$ethnicity)
res3 <- rstandard(model3)
yhat3 <- fitted(model3)
plot(yhat3,res3)
plot(data_tran$age_trans,res3)
plot(data_tran$education,res3)
```
#### What's next? ####



         
