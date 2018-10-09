class Notes
	attr_reader :notes
	
	def initialize 
		@notes = []
	end
	
	def new(title, body)
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
		@notes.each {|item|
		  if @notes.index(item) == listitem
		    puts "#{item[:title]}\n\n#{item[:body]}"
		  end
		}
	end
end