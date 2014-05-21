require 'spec_helper'
require 'support/generic_search.rb'

class SearchResultPage < GenericSearch
  include Capybara::DSL	

  	def wait_for_page_load
  	  find('.sortby-price').text.should == 'Price'  			
  	end

	def select_car
	  links_count = page.all(:link, 'Select', :visible => true).count
	  link_number = rand(links_count) + 1
	  page.all(:link, 'Select', :visible => true)[link_number].click
	  puts "We have #{links_count} SELECT links. And I clicked on #{link_number} link"
	end

end