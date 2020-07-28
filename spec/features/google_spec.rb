require 'spec_helper'
require 'capybara/rspec'

feature 'Google', :type => :feature, :js => :true do
	scenario 'execute a search' do
		binding.pry
	end
end