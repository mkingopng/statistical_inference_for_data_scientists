library(dplyr)
library(ggplot2)
library(tidyr)
data.frame(chisq = seq(0, 25, by=0.01)) %>%
  mutate(df_2 = dchisq(x = chisq, df = 2),
         df_4 = dchisq(x = chisq, df = 4),
         df_8 = dchisq(x = chisq, df = 8)) %>%
  gather(key = "df", value = "density", -chisq) %>%
  ggplot() +
  geom_line(aes(x = chisq, y = density, color = df)) +
  labs(title = "Chi-Square dist for various Degrees of Freedom",
       x = "x",
       y = "pdf")

