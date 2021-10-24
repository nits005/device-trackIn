
# Steps to setup

- install ruby 2.4.5
- install sqlite
- start terminal in project directory.
- run below commands.

    ```
    gem install bundle
    bundle install
    rails db:setup
    rails g devise:install
    rails g devise user
    rails db:migrate
    ```

- start server by running command `rails s`
- visit `localhost:3000` in browser

# ToDo

- Delete API key