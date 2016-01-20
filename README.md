# HomeAway Automation Exercise part 2

### Objective:
#### Write a suite of two automated API tests for https://api.data.gov/


### Setup
#### Verify Git, Ruby, RubyGems, and Bundler are installed on your system
  Open a console window and run the following commands to see if your 
  environment has the basic Ruby runtime environment configured 

    git --version
    ruby --version
    gem --version
    bundler --version
    
  If any of the previous commands fails to return version information, please 
  install the missing command executable.
  
#### Fork and then Clone the Test Code Repository

  In order to run the test, you need a copy of the test code on your computer. 
  In order to create that copy you need to <i>fork</i> and then <i>clone</i>
  my code from GitHub.
  
##### Please Note: You need a GitHub account to complete this step. If you 
      do not have a GitHub account, please take a minute to visit 
      http://www.github.com and create your account.
  
  Once you have a GitHUb account, open a browser, navigate to GitHub, and 
  login to your GitHub account.  
  Once you are logged into your GitHub account, please navigate to the 
  public GitHub repository: 
      https://github.com/agodwin/ha-exercise-two
  In the top right corner of the page, click the "Fork" button.
  Now, you have a fork of the original agodwin/ha-exercise-two repository 
  in your GitHub account.
  
  Still using the browser, and logged into your GitHub account, navigate to 
  your fork of the <i>ha-exercise-two</i> repository.
  On your fork's repository page, locate and copy the clone URL for your fork.


Type git clone, and then paste the URL you copied in Step 2. 
It will look like this, :
  
  
  Now return to the the same console window, or opening a new console, 
  please <i>clone</i> the test repository from your GitHub account to 
  you local computer. Clone this repository on your system with the 
  following command (replace YOUR-USERNAME with your GitHub user name):
  
    git clone https://github.com/YOUR-USERNAME/ha-exercise-two.git
    
#### Update Ruby Gems
  Using the same console window, or opening a new console, please change into the new directory and update your Ruby gems by running the following commands:
  
    cd ha-exercise-two/
    bundle install
     
### Run Test  
  Once you have updated your Ruby gems, you need to open a console window in order to run the tests.
  In the console window, you can run the following test:

     bundle exec rspec data_gov_api_spec.rb --format doc

