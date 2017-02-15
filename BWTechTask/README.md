Author: James Gibbons


## Requirements:
- Ruby 2.2+

- RubyDev `apt-get install ruby-dev`
(otherwise some gems probably won't install)

- Selenium webdrivers (Download and add to PATH):

    - firefox driver was really slow for me on ubuntu, if you have any problems then use chrome(ium) and the chrome-driver
geckodriver (for firefox): geckodriver https://github.com/mozilla/geckodriver/releases

    - #### OR

    - chrome-driver (for chrome/chromium. requires chromium-driver package on ubuntu): chromedriver https://sites.google.com/a/chromium.org/chromedriver/

If using chromedriver, change the line in support/env.rb to

```ruby
ENV['BROWSER']='chrome'
```


## To Run:
`$ gem install bundler`
`$ bundle install`
`$ cucumber`
