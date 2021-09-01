# websitetolocal
Copy any website and run on local

It scrape the front page of webpage in HTML format and then run it through Nginx webserver.

To change the website just change the docker-compose.yaml file.

Just Run below command 
$ docker-compose up -d

then test on browser
http://localhost:8000

If you changed the Webiste in dockercompose then you need to run below command to build again
$docker-compose build --no-cache 
