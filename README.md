# The Muse Job Board

* Ruby version

  2.6.1

* Configuration

  clone repo from github to local device
  
  in terminal run bundle install

* Database creation & initialization

  in terminal run the following commands, with postgreSQL running:
  
  rake db:create 
  
  rake db:seed
  
  rake db:migrate

* Run instructions

  to start the server running on a localhost (most likely http://localhost:3000/)
  
  in terminal run rails s 
