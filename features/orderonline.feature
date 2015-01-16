Feature: Order Dominos Pizza Online
  We want to step through a simple scenario for training

Background:
  Given I visit the Dominos home page

# expected to find id "Dominos-LocationSearch" but there were no matches (RSpec::Expectations::ExpectationNotMetError)
@location
Scenario: Location Search for Dominos Pizza
  Then I should see the Dominos Location Search page
  When I click the Order Online tab

# Your block takes 1 argument, but the Regexp matched 0 arguments. (Cucumber::ArityMismatchError)
@form
Scenario: Fill out Location Search
  And I click the Order Online tab
  And I select "Business" from address type drop-down
  And I enter "7950 Jones Branch Dr" in the street address input field
  And I enter "McLean" in the city input field
  And I select Virginia from drop-down
  And I click the Continue button
  Then I should see "7950 Jones Branch Dr" selected in the order settings

 # Unable to find field "Zip_Code" (Capybara::ElementNotFound)
@order
Scenario: Order Pizza
 And I click the Order Online tab
 And I fill out location search
 And I click the Continue button
 And I click the Change My Store link

# Unable to find css ".Delivery" (Capybara::ElementNotFound)
@outline
Scenario Outline: Order Pizzas from Different Locations
  And I click the Order Online tab
  And I select "<address_type>" from address type drop-down
  And I enter "<street_address>" in the street address input field
  And I enter "<city>" in the city input field
  And I select "<state>" from state drop-down
  And I enter "<zip_code>" in the zip code input field
  And I click the Continue button
#  Then I should see "<street_address>" selected in the order settings

  Examples:
    | address_type  | street_address        |  city        | state | zip_code  |
    | Business      | 7950 Jones Branch Dr  |  McLean      | VA    | 22102     |
    | Other         | 17376 Tedler Circle   |  Round Hill  | VA    | 20141     |

# Unable to find xpath "/html/body/header/nav/div[3]/ul/li[10]/a" (Capybara::ElementNotFound)
@absolute
Scenario: Track My Order
  When I click the Tracker tab
  Then I should see Tracker page

# expected to find id "genericMenuPage" but there were no matches (RSpec::Expectations::ExpectationNotMetError)
@statement
Scenario: View the Menu
  When I click the Menu tab
  Then I should see Dominos Menu

# undefined method `xpath' for #<Object:0x007fd057cae6d8> (NoMethodError)
@expect
Scenario: Email and Offer
  Then I should see Email and Offer link
