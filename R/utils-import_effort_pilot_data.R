#' Read in REDCap Data
#'
#' @param path the path to the REDCap Data excel sheet
#'
#' @return a tibble with raw REDCap Data

effort_pilot_read_redcap_data <- function(
  path
){
  readxl::read_xlsx(path)%>%
    janitor::clean_names()%>%
    mutate(
      subject_id = as.character(record_id)
    )
}
