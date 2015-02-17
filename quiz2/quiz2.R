#This script is meant to help find the answer to question 1 in quiz 2

#  find access parameters for this resource
oauth_endpoints("github")

#capture the unique user parameters for the github app
#created for this question
myapp <- oauth_app("github", "2614e0ac77bb83bfdfff", 
                    "c6128f90b7a330e8a087237c395170e23fcaee85")

#capture the unique user creds formatted for github endpoints
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

#re-config the access string for the Get statement below
gtoken <- config(token = github_token)

#capture the page to be accessed 
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)

#trap http errors as R errors (useful for debugging)
stop_for_status(req)

#render the content from the request to the console
content(req)
