TIL_profile_image_callout = function(n,cate){
  # ==== profile ko ====
  ## profile_ko_text_upper minimal
  ### ***NOT - include SECTION title & author***
  
  n2 = n - 1
  profile_ko_text_upper_m = c(
    "::: {.content-visible when-profile=\"ko\"}\n\n"
  )    
  
  # ==== image + callout ====
  phrases <- c("::: {layout-ncol=2}\n\n", 
                glue::glue("![](./images/Scan {n2}.jpeg){{group=\"my-gallery\"}}\n\n"), 
                ":::{.callout-note}\n",
                glue::glue("{cate}"),
                ":::\n", # callout
                ":::\n", # layout-ncol
                ":::\n\n") # profile
  
  ## ==== profile en ====
  ## profile_en_text_upper minimal
  ### ***NOT - include SECTION title & author***
  profile_en_text_upper_m = c(
    "::: {.content-visible when-profile=\"en\"}\n\n")
  
  ### === image + callout ===
  #### phrases2 - 합칠때 넣어야 함.
  result = c(profile_ko_text_upper_m, phrases, 
              profile_en_text_upper_m, phrases)
  return(result)
}