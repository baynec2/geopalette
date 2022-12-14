% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/google_image_request_url.R
\name{google_image_request_url}
\alias{google_image_request_url}
\title{google_image_request_url}
\usage{
google_image_request_url(location, zoom = "city")
}
\arguments{
\item{location}{this is the location. Note, there should be no spaces.}

\item{zoom}{level of zoom. This can be specified to be at the continent, city, streets, or building scale.}
}
\value{
a url that is compatible with the google API
}
\description{
This function returns a url that will return a url compatible with google static  maps API that corresponds to the the user specified location
}
\examples{

# returns the url to access a satellite image of Moab, UT.
moab_url = google_image_request_url(location = "Moab,UT",zoom="city")
}
