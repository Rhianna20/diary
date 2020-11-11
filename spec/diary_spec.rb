require './app'
  describe '.all' do
    it 'view diary notes' do
      diary = Diary.all
      expect(diary).to include('welcome')
    end      

  end