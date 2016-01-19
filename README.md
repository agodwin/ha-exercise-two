# HomeAway Automation Exercise part 2

### Objective:
#### Write a suite of two automated API tests for https://api.data.gov/


    

### Setup
#### Verify Ruby, RubyGems, and Bundler are installed on your system
  Open a console window and run the following commands to see if your environment has the basic Ruby runtime environment configured 

    ruby --version
    gem --version
    bundler --version
    git --version
    
  If any of the previous commands fails to return version information, please install the missing command executable.
  
#### Pull the Test Repository
  Using the same console window, or opening a new console, please clone the test repository from GitHub to you local computer with the following commands:
  
    git clone https://github.com/agodwin/ha-exercise-two.git
    
#### Update Ruby Gems
  Using the same console window, or opening a new console, please update your Ruby gems by running the following commands:
  
    cd ha-exercise-two/
    bundle install
     
### Run Test  
  Once you have updated your Ruby gems, you need to open a console window in order to run the tests.
  In the console window, you can run the following test:

     bundle exec rspec test/upload_spec.rb

