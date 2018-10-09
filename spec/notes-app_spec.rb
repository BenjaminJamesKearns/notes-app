require 'notes-app'

describe Notes do
  
  describe '#add' do
    it 'confirmation not was added' do 
    	expect(subject.add('Shopping', 'Buy bread')).to eq 'Shopping note added'
    end
    it 'checks the note is added to the array' do
    	expect{subject.add('Shopping', 'Buy bread')}.to change{subject.notes.count}.by 1
    end
    it 'checks the note title was added' do 
      subject.add('Shopping', 'Buy bread')
      expect(subject.notes[0]).to include title:"Shopping"
    end
    it 'checks the note title was added' do 
      subject.add('Shopping', 'Buy bread')
      expect(subject.notes[0]).to include body: "Buy bread"
    end
  end
  
  describe '#list' do 
    it 'shows list' do
  	  subject.add('Shopping', 'Get milk')
  	  subject.add('Reminder', 'Call Ahmed')
  	  expect{subject.list}.to output("1. Shopping\n2. Reminder\n").to_stdout
    end
  end
  
  describe '#open' do
    it 'shows the note specified by user' do 
      subject.add('Shopping', 'Get milk')
  	  subject.add('Reminder', 'Call Ahmed')
      expect{subject.open(2)}.to output("Reminder\n\nCall Ahmed\n").to_stdout
    end
  end
end