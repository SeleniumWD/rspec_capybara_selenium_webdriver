require 'spec_helper'

describe "CCCAdminTestSearch" do
  it "Verify search function like admin", :js => true do
    visit Capybara.default_host
    #login as joyce2@limos.com
    login_page = LoginPage.new
    login_page.login_as('joyce2@limos.com', 'password')
    #make Admin test
    find_link('Admin Test').click
    #fill all fields
    select('To Airport', :from => 'service_type')
    select('2', :from => 'search_pax')
    find(:css, '#search_ride_date').click
    find(:css, '#calcurrent').click
    select('11 PM', :from => 'search_pickup_time_hour')
    select(':45', :from => 'search_pickup_time_minute')
    fill_in 'search_pickup_place', :with => '4333 University Way Northeast, Seattle'
    fill_in 'search_drop_off_place', :with => 'SEA'
    find_button('Get a quote').click
    #select a car
    first(:link, 'Select').click
    #page.should have_css('#passenger_phone_num')
    #add verify wait for title
    #expect(page).to have_title "my_title"
    #page.title
    #page.has_title? "my title"
    #page.has_no_title? "my not found title"
  end
  
end
