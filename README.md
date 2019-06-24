# FILE TRANSFER APP

[![CircleCI](https://circleci.com/gh/thoth-ky/file-transfer-app/tree/master.svg?style=svg)](https://circleci.com/gh/thoth-ky/file-transfer-app/tree/master)

This is a simple rails application that allows a user to do file transfers to and from a remote server. The App has been developed and tested on Mac OS 10.14.5

## System dependencies
  * Ruby 2.6.2 (You can use [rbenv](https://github.com/rbenv/rbenv) or [rvm](https://rvm.io/) but not both)
  * Rails 5.2.3
  * Bundler gem
  * PostgreSQL 11.3

## Configuration
  * Clone this repository
    ```zsh
    $ git clone https://github.com/thoth-ky/file-transfer-app.git
    $ cd file-transfer-app
    ```
  * Ensure that the Postgres is installed, and linked
    ```
    $ brew install postgres
    $ brew link postgres
    ```
  * Install gems
    ```zsh
    $ bundle install
    ```

## Database creation
  ```zsh
  $ rails db:create
  $ rails db:migrate
  ```

## How to run the test suite
  ```zsh
  $ bundle exec rspec
  ```

## Deployment instructions
The app has been set up to deploy on Heroku. You can check out the deployed app [here](https://file-transfer-app-ky.herokuapp.com/)

On your local machine, you can deploy by running the following command:
```zsh
  $ heroku local web
```


## Author
  * Joseph Mutuku Kyalo


