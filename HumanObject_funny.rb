class Human

	attr_accessor :education_level, :friends, :personality
	
	
	def initialize(name, age)
		@name = name
		@age = age
	end	
	
	
	def description
		puts "This human is named #{@name}, at the spry age of #{@age} years old"
	end
	
	
	def advanced_characteristics
		if personality
	      puts "Their personality can be described as #{personality}"
	    end
	    
	    if education_level
	      puts "With a #{education_level} education level"
	    end
	    
	    if friends
	      puts "They social aptitutde has allowed them #{friends} friends"
		end
	end
	
	
end

person1 = Human.new("tyler", "28")

person1.education_level = "college"
person1.personality = "introvert"
person1.friends = "34"

person1.description
person1.advanced_characteristics