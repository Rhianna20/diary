feature 'Deleting a note' do
    scenario 'User can delete a note' do
        Diary.create(username: 'Lioness', word_otd: 'excellence')
        visit('/diary')
       first(.diary_notes).click_button 'Delete'
       
       expect(current_path).to eq '/diary'
      
    end
end