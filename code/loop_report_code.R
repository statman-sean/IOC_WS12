# List of clubs
clubs <- c("Club 1", "Club 2", "Club 3", "Club 4", "Club 5", "Club 6", "Club 7", "Club 8")

# Loop through each club and render the report
for (club in clubs) {
  rmarkdown::render(
    "C:/Users/sw356/OneDrive - University of Bath/IOC_WS12/code/example_club_injury_surveillance_report.Rmd",  # Replace with your actual R Markdown file name
    output_file = paste0("report_", gsub(" ", "_", tolower(club)), ".html"),
    params = list(club = club)
  )
}
