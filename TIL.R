# ====***make up categories***====
categories = str_c(cate1_split, collapse = ",") # cate1, cate2 ... 다 합치기
make-up-categories = c(glue::glue("categories: [{categories}]"),
                       "---\n")


# combine (when I have 2 images)
new_post_text = c(
  new_post_text,
  profile_ko_text_upper, 
  phrases1,
  profile_en_text_upper,
  phrases1, 
  profile_ko_text_upper_m,
  phrases2,
  profile_en_text_upper_m,
  phrases2
)

# finalize new post text
new_post_text <- paste0(
  new_post_text,
  collapse = "\n"
)

# create and alert about TIL/date directory
fs::dir_create(
  path = slug
)
cli::cli_alert_success("Folder created at {.file {slug}}")

# create and alert about TIL/date/images directory
fs::dir_create(
  path = slug + "/images"
)
cli::cli_alert_success("Folder created at {.file {slug}/images}")


# create file and alert
fs::file_create(new_post_file)
cli::cli_alert_success("File created at {.file {new_post_file}}")

# print new post information
cat(new_post_text)