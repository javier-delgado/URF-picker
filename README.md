URF Champion Picker
===================

Urf Champion Picker is a project made for the Riot Games API Challenge 2015. You can see a demo here: http://urfpicker.cloudapp.net/

----------


##Tech
URF champion picker uses the following  open source frameworks to work propperly:

 - [Ruby on Rails](http://rubyonrails.org/)
 - [Twitter Bootstrap](http://getbootstrap.com/)
 - [JQuery](https://jquery.com/)

##Installation
####Prerequisites
- Ruby v2.1.5 (You can use RVM)
- NodeJs (Or some other javascript runtime)
- Postgres Database

####Get the project
Use the following command to download the project
```sh
$ git clone git@github.com:javier-delgado/URF-picker.git
```
####Install dependencies
Move to the root directory and execute the following command:
```sh
$ bundle install
```
> **Note:**

> - If you have RVM installed, a gemset will be created automatically

####Setup secrets.yml
You have to create a secrets.yml file under 'config' folder. Head over [here](https://developer.riotgames.com/) to get a Riot Games API key. To get a randomly generated secret key base just run the following command:
```sh
$ rake secret
```
You can use the file secrets.yml.sample as a reference.
####Setup database.yml
This project uses Postgres as a database Engine, you need to create a database.yml file unde 'config' folder. User database.yml.sample as a reference.

After you have configured this file run the following commands:
```sh
$ rake db:create
$ rake db:schema:load
$ rake db:seed
```
This will create the database with some data (Champions and some other)
####Getting URF matches data
The application has an automated task to fetch URF matches data periodically, BUT this won't work after April 17th, 2015 because the endpoint for URF matches in the Riot Games API will be closed.

Instead you can download a pre-populated database from [here](https://mega.co.nz/#!EhVT2aJB!kusxDpVefO9oJFJ1yDFBhULr0dI349v49L2LgsNTAu4) and then import it with the following command:
```sh
$ psql -U [dbuser] -d db_urfpicker -f [the_file_you_downloaded]
```
Keep in mind this database contains over 100k random URF matches data, so it is quite heavy.
####Finish
That should be it, run "rails server" to get the app running, and try it in your browser http://localhost:3000

##Gems
This is a list of the most important Gems (libraries) used in this project:

- [slim-rails](https://github.com/slim-template/slim-rails)
- [httparty](https://github.com/jnunemaker/httparty)
- [whenever](https://github.com/javan/whenever)
- [select2-rails](https://github.com/argerim/select2-rails)
- [capistrano](https://github.com/capistrano/capistrano)

##Tests
This project doesn't have automated tests in part because of the simplicity of the project but also to accelerate the development process. 

##License 
URF champion picker isn’t endorsed by Riot Games and doesn’t reflect the views or opinions of Riot Games or anyone officially involved in producing or managing League of Legends. League of Legends and Riot Games are trademarks or registered trademarks of Riot Games, Inc. League of Legends © Riot Games, Inc.
####The MIT License (MIT)
Copyright (c) [2015] [Javier Alberto Delgado]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
