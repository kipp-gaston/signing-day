Signing Day
================

Requirements
-------------

This application requires:

- Ruby 2.2.1
- Rails 4.1.1

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

Getting Started
---------------
Install Ruby, Rubygems, and Bundler.

Install dependencies:
- `bundle install`

Configure database connection:
- `cp config/database.yml.example config/database.yml`
- `vim config/database.yml`
- Update with your database details.

Configure environment:
- `cp .env.example .env`
- `vim .env`
- Update with your environment details.

Create and migrate the database:
- `bundle exec rake db:create`
- `bundle exec rake db:migrate`

Start the app server:
- `foreman start -e .env`

Visit the app:
- `open http://localhost:5000`
