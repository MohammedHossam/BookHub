# BookHub
It is a platform application that enables users to exchange books with each other. Users can display all books existing on the platform and add books they own and wanna share with others.
Google account is used to log into the app.
This repo contais only the backend API for this mobile application.
The API was developed using Ruby on Rails framework.

The API is deployed through Heroku and fully fuctional at:
https://thebookhubapi.herokuapp.com/

# How to run the application ?
1- Clone or download the repo.\n
2- Add Bookhub/config/local_env.yml config file containing only the following (replace <Your connection string> with you actual connection string) :
   CONN:<your connection string>
3- Run bundle install to install dependencies.
4- Run bundle exec rails s to run the server on localhost with port 3000

# Dependency declaration and isolation tool
Bundler was used to manage dependenconfig ies all dependencies can be installed using :
  bundle install

# Config files
only one config file was used as you need one environment variable to run the API ENV['CONN'] which should contain the connection string. More details in the How to run section.

# Docker
The API is dockerized. You can run it with one command yet you have to have docker installed correctly.
You can use: docker-compose up to launch the API on localhost
You can also build and run the image as follows :
Build : sudo docker build . -t rails-docker
Run :   sudo docker run -it -p 3000:3000 rails-docker
then use : sudo docker ps -a to get the id of the image
then use : sudo docker inspect -f "{{ .NetworkSettings.IPAddress }}" <ID>  to get the ip to run at
