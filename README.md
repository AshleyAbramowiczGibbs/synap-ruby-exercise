# README

Welcome to A Very Simple CRM.

# Live App

Please find the back-end API endpoints for retrieving data 
* GET https://a-simple-crm.herokuapp.com/api/people.json
* GET https://a-simple-crm.herokuapp.com/api/people/:id.json
* GET https://a-simple-crm.herokuapp.com/api/organizations.json
* GET https://a-simple-crm.herokuapp.com/api/organizations/:id.json

# Build Setup

* Ruby version 2.5.1

``` bash
# Clone project
git clone https://github.com/AshleyAbramowiczGibbs/synap-ruby-exercise.git

# Install Gems
$ bundle install

# Add the Seed file
rails db:seed

#start local server
rails server

Visit the app at [http://localhost:3000](http://localhost:3000)

API endpoints for retrieving data 
GET localhost:3000/api/people.json
GET localhost:3000/api/people/:id.json
GET localhost:3000/api/organizations.json
GET localhost:3000/api/organizations/:id.json
```
Additional Resources that assisted in this project
*  How to seed a Rails database with a CSV file https://gist.github.com/arjunvenkat/1115bc41bf395a162084
