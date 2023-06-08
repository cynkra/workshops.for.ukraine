# Create a project : usethis::create_project()
# we already have one!

# Version control : We alread set it up
# usethis::use_git()

refactor::check_files_parse()

library(lintr)
lint_dir(linters = absolute_path_linter())
lint_dir(linters = undesirable_function_linter(c(setwd = NA, getwd = NA)))

# create package: usethis::create_package()
# we already have one

# move all the code files to "inst"

renv::dependencies()
# zoo, ggplot2, tibble, tidyr, readr, purrr, dplyr, stringr, forcats

refactor::identify_hybrid_scripts()


flow::flow_view_source_calls()

styler::style_dir()
refactor:::use_lintr_template_on_dir()
