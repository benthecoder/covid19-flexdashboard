# installing package imports packages
pkg_list <- c(
    "rmarkdown",
    "flexdashboard",
    "data.table",
    "dplyr",
    "tidyr",
    "magrittr",
    "purrr",
    "leafpop",
    "RColorBrewer",
    "forcats",
    "glue",
    "plotly",
    "leaflet",
    "DT",
    "lubridate"
)

# for raster 
# https://github.com/rspatial/raster/issues/43
install.packages(
    "https://cran.r-project.org/src/contrib/Archive/raster/raster_2.5-8.tar.gz",
    repos = NULL,
    type = "source"
)

install.packages(pkgs = pkg_list, repos = "https://cran.rstudio.com/", Ncpus = 6)

fail <- FALSE

for (i in pkg_list) {
    if (i %in% rownames(installed.packages())) {
        cat(i, "...OK\n")
    } else {
        cat(i, "...Fail\n")
        fail <- TRUE
    }
    
    if (fail) {
        stop("Fail to install some package/s")
    }
}