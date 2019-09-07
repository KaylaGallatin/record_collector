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

## Future Work Ideas
- Add more info the the user model (first name, last name, etc.) with a settings page to manage that info. 
- Add a search to the record index page in order to search for a specific record in the list.
- Add an "Band" model to associate albums to their bands. Artist would have attribtues like name, description, hometown? start/end dates? Bands would "have many" albums, and an album would "belong to" a band. 
- Add an "Artist" model to associate artists to their bands. Bands would "have many" artists.
- Add a "Track" model to add songs to albums. Albums would "have many" tracks, and a track would "belong to" an album.
- Expand the record index page to add band or artist to the search. 
- Add the ability to upload an image (album cover) and store it on the album model. 
