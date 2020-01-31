# tidydt: Tidy Verbs for `data.table`<img src="man/figures/logo.png" align="right" alt="" width="120" />

[![](https://www.r-pkg.org/badges/version/tidydt?color=orange)](https://cran.r-project.org/package=akc) ![](http://cranlogs.r-pkg.org/badges/grand-total/tidydt?color=green)  [![](https://img.shields.io/badge/devel%20version-0.3.0-blue.svg)](https://github.com/hope-data-science/tidydt) ![](https://img.shields.io/badge/lifecycle-maturing-blue.svg) ![Last-changedate](https://img.shields.io/badge/last%20update-2020--01--31-yellowgreen.svg)





## Overview

`tidydt` is a toolkit of tidy data manipulation verbs with `data.table` as the backend . Combines the merits of syntax elegance from `dplyr` and computing performance from `data.table`,  `tidydt` intends to provide users with state-of-the-art data manipulation tools with least pain. This package is inspired by `maditr`, but follows a different philosophy of design,  such as prohibiting in place replacement and used a "_dt" suffix API. Also, `tidydt` would introduce more tidy data verbs from other packages, including but not limited to `tidyverse` and `data.table`. If you are a `dplyr` user but have to use `data.table` for speedy computation,  or `data.table` user looking for readable coding syntax, `tidydt` is designed for you (and me of course).

Keep your work tidy in `data.table` !



## Features

- Always receives data.frame (tibble/data.table/data.frame) and returns a data.table.
- Never use in place replacement. 
- Use suffix rather than prefix to increase the efficiency (especially when you have IDE with automatic code completion).
- More verbs for big data manipulation.
- Supporting data importing and parsing with `fst`, details see [parse_fst](https://hope-data-science.github.io/tidydt/reference/fst.html), [select_fst](https://hope-data-science.github.io/tidydt/reference/fst.html) and [filter_fst](https://hope-data-science.github.io/tidydt/reference/fst.html).
- Flagship functions: [group_dt](https://hope-data-science.github.io/tidydt/reference/group_dt.html), [unnest_dt](https://hope-data-science.github.io/tidydt/reference/unnest_dt.html), [mutate_when](https://hope-data-science.github.io/tidydt/reference/mutate_when.html), etc.



## Installation

```R
devtools::install_github("hope-data-science/tidydt")
```



## Example

```R
library(tidydt)

iris %>%
  mutate_dt(group = Species,sl = Sepal.Length,sw = Sepal.Width) %>%
  select_dt(group,sl,sw) %>%
  filter_dt(sl > 5) %>%
  arrange_dt(group,sl) %>%
  distinct_dt(sl,.keep_all = T) %>%
  summarise_dt(sw = max(sw),by = group)
#>         group  sw
#> 1:     setosa 4.4
#> 2: versicolor 3.4
#> 3:  virginica 3.8
```





## Future plans

`unnest_dt` is now fast enough to beat the `tidyr::unnest`, but the `nest_dt` function would build a nested data.table with `data.table` inside. How to use such data structure is remained to be seen, and the performance is still to be explored.



## Related work

- [maditr](https://github.com/gdemin/maditr)
- [data.table](https://github.com/Rdatatable/data.table)
- [dplyr](https://github.com/Rdatatable/data.table)
- [table.express](https://github.com/asardaes/table.express)
- [tidyfast](https://github.com/TysonStanley/tidyfast)
- [tidytable](https://github.com/markfairbanks/tidytable)



## Acknowledgement

The author of [maditr](https://github.com/gdemin/maditr), [Gregory Demin](https://github.com/gdemin) and the author of [fst](https://github.com/fstpackage/fst), [Marcus Klik](https://github.com/MarcusKlik) have helped me a lot in the development of this work. It is so lucky to have them (and many other selfless contributors) in the same open source community of R.

