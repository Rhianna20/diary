# frozen_string_literal: true

require './app'

feature 'view diary notes' do
  scenario 'view diary notes' do
  
    visit('/diary')
   expect(page).to include 'word_otd'
     
  end
end
 