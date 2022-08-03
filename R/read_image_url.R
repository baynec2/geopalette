#' read_image_url
#'
#'reads image  into R from url passed to google API
#' @param google_image_request_url url to get image.
#'
#' @return png image in R
#' @export
#'
#' @examples
#' # This will print the image associate with the image request url
#' read_image_url("https://maps.googleapis.com/maps/api/staticmap?center=San%20Diego,CA&zoom=10&&maptype=satellite&size=400x400&key=AIzaSyA7l6m8iwPSIMlb3vFNK2TAKFSy7Is7N3c")
read_image_url = function(google_image_request_url){
# Downloading and reading image.
curl::curl_download(google_image_request_url,destfile = "temp.png")
pic = png::readPNG("temp.png")
# Removing file
file.remove("temp.png")

return(pic)
}





