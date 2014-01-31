#!/usr/bin/env ruby

require 'profile'
class Calculator
        def self.count_to_large_number
                x = 0 
                100000.times { x += 1}
        end

        def self.count_to_small_number
                x = 0 
                1000.times { x += 1}
        end
end

Calculator.count_to_small_number
Calculator.count_to_large_number





# Since I just came off work, and a hectic two hour schedule, I'm technically cheating on my resolution to commit some code everyday by commiting this piece of writing. 
# Anyway going to sleep for a bit so that I can stay awake later in the night.
# Happy New Year 2014!!