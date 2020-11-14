require 'pg'

class Diary
  def self.all
    if ENV['ENVIRNONMENT'] == 'test'
      connection = PG.connect(dbname: 'Diary_entries_test')
    else
      connection = PG.connect(dbname: 'Diary_entries')
    end
    results = connection.exec("SELECT * FROM diary_notes;")
    results.map { |diary_notes| diary_notes['word_otd'] }
  end

  def self.create(word_otd:, username:)
    if ENV['ENVIRNONMENT'] == 'test'
      connection = PG.connect(dbname: 'Diary_entries_test')
    else
      connection = PG.connect(dbname: 'Diary_entries')
    end
    connection.exec("INSERT INTO diary_notes (word_otd, username) VALUES('#{word_otd}', '#{username}' )RETURNING id, word_otd, username")

    
  end

end