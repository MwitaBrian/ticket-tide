# README



Things you may want to cover:

* Ruby version
The version of Ruby of this project is specified in the Gemfile located in the root directory of The project. 
Installing Ruby
There are a few ways to install Ruby on your computer, depending on your operating system and personal preferences. Here are some options:
Use a package manager: Some operating systems, such as Linux, include Ruby in their package manager repositories. For example, on Ubuntu, you can run sudo apt-get install ruby to install Ruby.
Use a Ruby version manager: A version manager like rbenv or rvm allows you to install and switch between different versions of Ruby on your system. These tools also help manage dependencies and isolate your Ruby environments from each other. To install rbenv on a Unix-based system, you can run git clone https://github.com/rbenv/rbenv.git ~/.rbenv followed by echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc and echo 'eval "$(rbenv init -)"' >> ~/.bashrc.
Download and compile from source: You can download the Ruby source code from the official website https://www.ruby-lang.org/en/ and compile it on your system. This option gives you more control over the installation process, but requires more technical knowledge.
Once you have Ruby installed on your system, you can check the version by running ruby -v.
Installing Ruby on Rails:
Ruby on Rails is a web application framework that builds on top of Ruby. To install Ruby on Rails, you can use the gem command, which is Ruby's package manager. Here's how:
Run gem install rails to install the latest version of Rails.
Alternatively, you can specify a specific version of Rails by running gem install rails -v VERSION.
After Rails is installed, you can check the version by running rails -v.

* System dependencies
Before you install system dependencies, we advice that you first cline this app in your vs code. 'Run bundle install' When you run 'bundle install' to install the project's dependencies, Bundler will ensure that the correct version of Ruby is installed on your system.
* Configuration
There are several ways to configure this Rails application, including setting options in the config/application.rb file or in environment-specific configuration files such as config/environments/development.rb or config/environments/production.rb.
* Database creation and Database initialization
After installing System dependencies, run "rails db:migrate db:seed". This will load the schema and seed the database with any initial data you have specified.
Run "rails s" to start the server, the server can be mySQL database, MS SQL, POSTGRESQL etc. We prefer that you use postgresql. Follow this link to install postgresql https://www.postgresql.org/docs/

*Copyright © 2023
The project “Ticket tide” is owned by the creators and therefore nobody can reproduce the without express permission from the owners.
Use or reproduction of this application without permission is infringement of our copyright and may lead to legal action and seek damages.

