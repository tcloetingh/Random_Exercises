module Luhn

    def self.is_valid?(numbers)
        
        seperate_integers = numbers.to_s.split('').map(&:to_i)   

        double = []

        seperate_integers.reverse.each_with_index do |e, index|
            if ((index + 1) % 2 == 0) then
                double.push(e * 2)
            else 
                double.push(e)
            end
        end


        more_than_ten = double.map{|e| if e >= 10 then e - 9 else e end}

        sum = 0

        more_than_ten.each{|e| sum += e}


        
         if sum % 10 == 0
             return true
         else
             return false
         end

    end
end

