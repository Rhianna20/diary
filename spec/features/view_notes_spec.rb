# frozen_string_literal: true

require './app'

feature 'view diary notes' do
  scenario 'view diary notes' do
    visit('/diary')
   # fill_in 'name', with: 'Lioness'
   # fill_in 'notes', with: 'with mesaage'
    # click_button 'Submit'
    expect(page).to have_text ('welcome')
  end
end
