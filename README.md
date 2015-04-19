# Kakama
## An open source staff and event rostering application by Katipo Communications Ltd.

### Basic Installation
* Clone
    * git clone git://github.com/katipo/kakama.git
* Create databases
    * mysql> create database kakama;
    * mysql> grant all on kakama.* to 'kakama'@'localhost' identified by 'kakama';
* Configure
    * cp config/database.yml.example config/database.yml
    * Adjust config/database.yml as needed
* Prepare
    * gem update --system 1.3.7
    * gem install less -v=1.2.21
    * gem install therubyracer -v 0.9.0
    * gem install i18n -v 0.4.2
    * gem install fastercsv -v 1.5.3
    * For postgres installation:
        * gem install pg -v 0.14.1
    * rake gems:install
    * rake db:setup
    * rake db:seed_fu
    * whenever --update-crontab
    * ruby script/delayed_job start
* Run
    * ruby script/server
