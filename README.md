# Laserhub web application

Our aim is to assert the user login to Laserhub web application. 

URL - https://app.laserhub.com/login

## Test Automation Framework

BDD using Cucumber, Ruby language and WATIR (Selenium abstraction in ruby).

## Directories and structure:

  * config: cucumber.yml stores the command line options.
  * features:
    * feature_files: `test.feature` explains the steps followed to test the scenario. 
      It has positive and negative cases included which is listed down in the examples.
    * step_definitions: `test_steps.rb` file defines the steps to test the scenario.
  * support: `env.rb` is used to manage the environment such as declaring the environment variables and dependencies.
  * reports: reports get generated here after the execution.
  * Gemfile: contains the list of gem dependencies which are used to execute the feature

  All codes has been tested for linting and code formatting using [RuboCop](https://github.com/rubocop/rubocop) as pre-commit

## Examples tested

In test.feature there are six examples mentioned.These include positive and negative cases as follows:-
1. Valid username and password
2. Valid username and invalid password
3. Invalid username and password
4. No username and password
5. Valid username and no password
6. No username and random password

## Installation

* Download the ruby installer and install the latest version of Ruby(v3.1.1) from [here](https://www.ruby-lang.org/de/downloads).
* Verify that ruby is installed successfully by checking the ruby version on command prompt.
* Install chromedriver: Please check the chrome version installed in your system and install the same version from [here](https://chromedriver.chromium.org/downloads) and place the `chromedriver.exe` in `C:/Ruby/bin` (path where ruby is installed).
* Open terminal and navigate to the path of the repository and run `bundle install`. This will install all the dependent gems.

## Execution

* Open command prompt and navigate to the path of the repository and run `bundle exec cucumber`  
  OR
* Open the repository in any IDE and run the test.feature file.

## Results

* Additionally a `report.html` will be generated after the execution in the `reports` directory.






