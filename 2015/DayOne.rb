#!/usr/bin/env ruby

file = File.open('./input/input01.txt').read

open = file.count '('
closed = file.count ')'

first_result = open - closed

def calculate_floor(file)
  file.chars.each_with_index.inject(0) do |floor, (character, index)|
    if character == "(" ? (floor +=1) : (floor -= 1)
      floor += 1
    else
      floor -= 1
    end
    if floor.negative?
      puts index + 1
      break
    end
    floor
  end
end

second_result = calculate_floor(file)
File.open("./output/output01.txt", "w+") { |f| f.write "This is the first result: #{ first_result } \nThis is the second result: #{ second_result }" }



