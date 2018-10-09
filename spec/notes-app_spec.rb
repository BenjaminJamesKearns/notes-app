require 'notes-app'

describe Notes do
  
  describe '#new' do
    it 'creates a new note' do 
    	expect(subject.new('Shopping', 'Buy bread')).to eq 'Shopping note added'
    end
    it 'tests the note is added' do
    	expect{subject.new('Shopping', 'Buy bread')}.to change{subject.notes.count}.by 1
    end
  end
  
  describe '#list' do 
    it 'shows list' do
  	  subject.new('Shopping', 'Get milk')
  	  subject.new('Reminder', 'Call Ahmed')
  	  expect{subject.list}.to output('1. Shopping\n2. Reminder\n').to_stdout
    end
  end
  
  describe '#open' do
    it 'tests open method' do 
      subject.new('Shopping', 'Get milk')
  	  subject.new('Reminder', 'Call Ahmed')
      expect{subject.open(2)}.to output('Reminder\n\nCall Ahmed\n').to_stdout
    end
  end
end