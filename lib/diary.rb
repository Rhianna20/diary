require 'pg'

class Diary
  attr_reader :id, :username, :word_otd

  def initialize(id:, username:, word_otd:)
    @id = id
    @username = username
    @word_otd = word_otd
  end

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
    result = connection.exec("INSERT INTO diary_notes (word_otd, username) VALUES('#{word_otd}', '#{username}' ) RETURNING id, word_otd, username;")
    Diary.new(id: result[0]['id'],username: result[0]['username'],word_otd: result[0]['word_otd'])
  end
  def self.delete(id:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'Diary_notes_test')
    else
      connection = PG.connect(dbname: ;'Diary_entries')
    end
    connection.exec("DELETE FROM diary_notes WHERE id = #{id}")
    
  end

end