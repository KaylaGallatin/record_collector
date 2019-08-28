# Record Collector
Ruby on Rails site used to manage a collection of records.

## Info
- Ruby version: 2.3.7
- Rails version: 5.2.3
- User auth: Devise https://github.com/plataformatec/devise
- Styles: MDL https://getmdl.io/
- Form help: https://github.com/plataformatec/simple_form

## Initial Installation
- Clone the repo and cd to wherever you saved it
- Install Homebrew: https://brew.sh/
- Install Mysql5.6: `brew install mysql@5.6 && brew services start mysql@5.6`
- Install Rbenv: https://github.com/rbenv/rbenv
- Install Ruby: `rbenv install`
- Install Bundler: `gem install bundler`
- Install other dependencies: `bundle install`

## Initial Setup
- Create local database: `rake db:create`
- Migrate local database: `rake db:migrate`
- Run the project: `rails s` or choose a port: `rails s -p 4000`
