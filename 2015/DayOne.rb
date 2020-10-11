#!/usr/bin/env ruby

file = File.open('./input/input01.txt').read

open = file.count '('
closed = file.count ')'

result = open - closed

File.open("./output/output01.txt", "w+") { |f| f.write "#{ result }" }
