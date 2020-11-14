require './app'
require 'spec_helper'

  describe Diary do
    describe '.all' do
    it 'view diary notes' do
      connection = PG.connect(dbname: 'Diary_entries_test')
  
      # adds test data
      connection.exec("INSERT INTO users (name) VALUES ('Lioness');")
      connection.exec("INSERT INTO users (email) VALUES ('t@test.com');")
      diary = Diary.all
    end   
  end   

  describe '.create' do
    it 'creates a new diary entry' do
      diary = Diary.create(username: 'Lioness',word_otd: 'Lioness' )
      persisted_data = persisted_data(id: diary_notes.id)

      
      expect(diary_notes).to_be_a Diary
      expect(diary_notes).to eq persisted_data.first['id']
  
    end
  end
end