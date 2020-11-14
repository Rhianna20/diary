feature 'user can add word of the day' do
  scenario 'user inputs word of the day' do
    visit '/'
       click_button('Submit')
    expect(page).to have_content 'Hey Rhianna'        
  end
end
