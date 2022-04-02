# Laserhub web application

Our aim is to assert the user login to Laserhub web application. 
URL - https://app.laserhub.com/login

# Description

BDD framework using Cucumber, Ruby language and WATIR(Selenium abstraction in ruby) are used for the test automation.
The repository contains test.feature file and test_steps.rb step definition file. The feature file explains the steps
followed to test the scenario. It has positive and negative cases included which is listed down in the examples. The
test_steps.rb file defines the steps to test the scenario. 


# Installation
* Download the ruby installer and install the latest version of Ruby(v3.1.1) from https://www.ruby-lang.org/de/downloads
* Verify that ruby is downloaded successfully by checking the ruby version on command prompt.
* Install chromedriver: Please check the chrome version installed in your system and install the same version from  
  https://chromedriver.chromium.org/downloads and place the chromedriver.exe in C:/Ruby/bin (path where ruby is installed).
* Open command prompt and navigate to the path of the repository and run 'bundle install'. This will install all the dependent gems.

# Execution
* Open command prompt and navigate to the path of the repository and run 'bundle exec cucumber'  
  OR
* Open the repository in any IDE and run the test.feature file.

# Results 

* The results can be viewed in the command prompt or the IDE execution window depending on where the program is executed.
* Additionally a report.html will be generated after the execution in the path laserhub_ruby\reports\report.html






