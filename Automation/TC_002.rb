require 'test/unit'

class TC_001_Login_Functionality < Test::Unit::TestCase

  def testCase1
    puts "person enters username"
    puts "person enters password"
    puts "person clicks submit button"
    assert_true(true, "This is a error message")
  end
  def setup
    puts "Start the browser"
  end
  def teardown
   puts "Close the browser"
  end
  def testCase2
  puts "This is method two i.e testCase2"
  end
end
