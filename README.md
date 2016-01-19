# HomeAway Automation Exercise part 2

### Objective:
## Write a suite of two automated API tests for https://api.data.gov/


    

### Test it:
#### Verify Ruby, RubyGems, and Bundler are installed on your system

    ruby --version
    gem --version
    bundler --version
    
  If any of the previous commands fails to return version information, please install the missinng command executable.
  
#### Update Ruby Gems
  Prior to running the automated tests for the application, please update your Ruby gems 
  by running the following commands:
  
    cd test-challenge/
    bundle install
     
#### Tests  
  Once you have updated your Ruby gems, you need to open a console window in order to run the tests.
  In the console window, you can run the following test:

     bundle exec rspec test/upload_spec.rb

