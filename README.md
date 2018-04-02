# Gentlemens Lounge website & Roster server
  Dancer Roster API
  Stage Time Table Website
  iOS Application (seperate repo https://www.github.com/nickmoignard/strip_club_roster)
  
  Demo: https://youtu.be/VqMPoLY6SQA
  
  
1. An ubuntu server using google chrome & chromecasts in televisions distrubuted around the club allows the dancers to check their performance times. ( The server casts : http://13.211.150.198:3000/time_slots to every screen )
2. An AWS EC2 instance hosts the Application.
3. iPad Mini 2 with app installed


This application was created at the request of a client

The Problem:

 * Gentlemens Lounge's can have from 20 - 100 dancers working at once. Each dancer will perform multiple times throughout the night in a variety of locations around each venue.

 * Each night a roster for the dancers is created by the manager on paper. Currently the manager has to either handwrite copies of the original sheet or individually remind each dancer.

 * Rosters are created by hand throughout the night, as they are subject to change at very short notice due to girls giving private dances.

Solution:

 * Create a digital Roster stored in the cloud (Ruby on Rails : RESTFul JSON API) 
 * Display Roster on televisions throughout each venue ( Single View Webpage )
 * Give venue managers an iPad with an app to edit the roster ( iOS Application )


ruby 2.4.1p111 (2017-03-22 revision 58053)
Rails 5.1.5

# Configuration
install gems:
          $ bundle install
init db:  
          $ rails db:migrate
          $ rails db:seed
start server:
          $ rails s

# Services (job queues, cache servers, search engines, etc.)
Create new time slots each day at 6 pm *** YET TO BE WRITTEN ***
