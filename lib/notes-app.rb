class Notes
	attr_reader :notes
	
	def initialize 
		@notes = []
	end
	
	def add(title, body)
		@notes << {title: title, body: body}
		"#{title} note added"
	end
	
	def list
		item_number = 1
		@notes.each {|item|
		  puts "#{item_number}. #{item[:title]}"
		  item_number += 1
		}
	end
	
	def open(listitem)
		listitem -= 1
		@notes.each_with_index {|item, index|
		  if index == listitem
		    puts "#{item[:title]}\n\n#{item[:body]}"
		  end
		}
	end
end