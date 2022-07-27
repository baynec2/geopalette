#' read_image_url
#'
#' @param google_image_request_url
#'
#' @return
#' @export
#'
#' @examples
read_image_url = function(google_image_request_url){
# Downloading and reading image.
curl::curl_download(google_image_request_url,destfile = "temp.png")
pic= png::readPNG("temp.png")
# Removing file
file.remove("temp.png")

return(pic)
}





