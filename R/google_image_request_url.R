#' google_image_request_url
#'
#' This function returns a url that will return a url compatible with google static  maps API that corresponds to the the user specified location
#'
#' @param location this is the location. Note, there should be no spaces/
#' @param zoom level of zoom. This can be specified to be at the continent, city, streets, or building scale.
#'
#' @return a url that is compatible with the google API
#' @export
#'
#' @examples
#'
#' # returns the url to access a satellite image of Moab, UT.
#' moab_url = google_image_request_url("Moab,UT","city")
#'
google_image_request_url = function(location,zoom="city"){
  #Setting zoom
  if(zoom =="continent"){
    zoom = 5
  }else if(zoom =="city"){
    zoom = 10
  }else if(zoom =="streets"){
    zoom = 15
  }else if(zoom =="buildings"){
    zoom = 20
  }else{
    zoom = zoom
  }
  # Base_url for google maps API
  base_url = "https://maps.googleapis.com/maps/api/staticmap?"
  #Setting the parmeters
  center = location
  size = "size=1000x1000&"
  maptype = "maptype=satellite&"
  #Dealing with the key and such. Restricted to only have access to static maps and fixed billing such that it will stay within free tier.
  key = "AIzaSyA7l6m8iwPSIMlb3vFNK2TAKFSy7Is7N3c"

#Returns a png
  request_url = paste0(base_url,"center=",center,"&","zoom=",zoom,"&","format=png&",maptype,size,"key=",key)

  return(request_url)

  }
