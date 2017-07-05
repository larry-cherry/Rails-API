# Larry Rails API

__**Goal**__

* The purpose of this project is to provide projects that do not have a backend a means of performing tasks or operations that are best suited for the backend. I will use this API to protect my API keys, track usage, or correct potential errors before a response is sent. 

__**Projects Using This API**__
* [Weather App](https://github.com/larry-cherry/WeatherApp)

__**Environment Setup**__

* Please make sure [PostgreSQL](https://www.postgresql.org/) is installed. You may need to modify this Apps Database credentials for it to work correctly with your PostgreSQL setup.

* This app was built using Ruby 2.4.1 and may have issues with earlier versions of Ruby. I recommend using [RVM](https://rvm.io/) to make it easier to change ruby versions. To check your Ruby version run `ruby -v`

* Make sure Rails is installed. Easiest way to verify is by running `rails -v`. If you do not have rails install run the command `gem install rails`. I recommend using Rails version 5.1.0 or higher.

* [Dark Sky](https://darksky.net/dev/) requires an API key in order for it to work correctly. Once you have the API key you will need to add it to your environmental variables using the word `darksky`. In Mac or Linux this can easily be performed using the command `export darksky="You Key Here"` To verify this open the `rails console` and type in `ENV['darksky']` to verify your key is available.

__**Starting App**__

* Run `bundle Install`
* Run `rails s`
* The app should be available on localhost:3000 in your web browser.
* The Weather API is available on http://localhost:3000/weather/index 
