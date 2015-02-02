# pop-quiz-one

## Debug Session 

This pop quiz focuses how the user approaches the run-time exception to determine failing line of code, identify root cause, and provide a solution.

@location - expected to find id "Dominos-LocationSearch" but there were no matches (RSpec::Expectations::ExpectationNotMetError)
@form - Your block takes 1 argument, but the Regexp matched 0 arguments. (Cucumber::ArityMismatchError)
@order - Unable to find field "Zip_Code" (Capybara::ElementNotFound)
@outline - Unable to find css ".Delivery" (Capybara::ElementNotFound)
@absolute - Unable to find xpath "/html/body/header/nav/div[3]/ul/li[10]/a" (Capybara::ElementNotFound)
@statement - expected to find id "genericMenuPage" but there were no matches (RSpec::Expectations::ExpectationNotMetError)
@expect - undefined method `xpath' for #<Object:0x007fd057cae6d8> (NoMethodError)
@career - Unable to find link "tab" (Capybara::ElementNotFound)

$ cucumber --tags @location
