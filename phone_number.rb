require 'pry'
class PhoneNumberConvert
  def initialize
    logic
    @phone_number = 0
  end
  
  def convert
   split = @phone_number.split("")
   result = "+1 (#{split[0..2].join}) #{split[3..5].join}-#{split[6..9].join}"
  end

  def logic
   puts "Enter a 10 Digit Phone Number"
   puts "No Spaces"
   @phone_number = gets.chomp
   if @phone_number.split('').size == 10
     convert
     puts "here is the formatted number: #{convert}"
   elsif @phone_number.split('').size < 10
     binding.pry
     puts "ENTER A 10 DIGIT NUMBER"
     logic
   elsif @phone_number.split('').size > 10
     binding.pry
     puts "ENTER A 10 DIGIT NUMBER"
     logic 
   end
  end
end

PhoneNumberConvert.new



