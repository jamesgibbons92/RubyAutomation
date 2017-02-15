require 'watir'
require 'cucumber'
require 'test/unit'


require 'test/unit/assertions'
include Test::Unit::Assertions

#chromedriver does not work on windows with this test script

ENV['BROWSER']= 'firefox'
#ENV['BROWSER']= 'chrome'


