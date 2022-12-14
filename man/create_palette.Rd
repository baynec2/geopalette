% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_palette.R
\name{create_palette}
\alias{create_palette}
\title{create_palette}
\usage{
create_palette(unique_colors)
}
\arguments{
\item{unique_colors}{this is a list of unique colors. Intended to be the output of determine_unique_colors}
}
\value{
color palette
}
\description{
This function will create a palette given a list of unique colors.
}
\examples{
#Creating a color palette from Culpeper, VA

culpeper = google_image_request_url("Culpeper,VA","city") \%>\%
 read_image_url() \%>\%
  determine_unique_colors() \%>\%
   sort_colors()

culpeper_pal = create_palette(culpeper)
}
