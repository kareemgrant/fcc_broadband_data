# README

* Application that fetches data from FCC Broadband API and stores it in a Postgres database

* Follow [these instructions](http://installrails.com/) to install Rails Application

* Install Postgres database on your computer (if you don't already have it installed)

    ```
    $ brew install postgres
    ```

* Clone repo

* Navigate to project folder and run the following commands:

  ```
  $ bundle install
  ```

  ```
  $ rake db:create
  ```

  ```
  $ rake db:migrate
  ```

* Fetch data

  * Open `services/data_fetcher.rb` and add your FCC API key for variable named `api_key`

  * From your terminal (within the project folder) run the following:

  ```
  $ rails console
  ```

  While in the rails console, run the following:

  ```
  $ DataFetcher.fetch
  ```

  This will make an API call to the FCC and store the data in the postgres database associated with this application on your computer

* Group data and export the file

  * Run the following command to export a JSON file that contains the average max advertised download speed by provider grouped by block code

  * Go to the rails console

  ```
  $ rails console
  ```

  * Run the following command from within the rails console

  ```
  $ FileCreator.create
  ```

  This command will generate a JSON file named `data.json` containing the data specified above and place that file a folder named `data` located at the top level of the project
