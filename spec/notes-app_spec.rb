require 'notes-app'
describe Notes do
  it "tests notes class" do
    subject
  end
  describe '#new' do
    it "creates a new note" do 
    	expect(subject.new("Shopping", "Buy bread")).to eq "Shopping note added"
    end
  end
  describe '#list' do 
  	it "shows list" do
  		subject.new("Shopping", "Get milk")
  		subject.new("Reminder", "Call Ahmed")
  		expect{subject.list}.to output("1. Shopping\n2. Reminder\n").to_stdout
  	end
  end
end