#this controls the interface with the user
require 'pry'
class MedSearch::CLI

def call
greeting
input = options_query
if input == 'quit'
  goodbye
elsif input == 'list'
    MedSearch::Drug.drugs_researched
    next_call
else
MedSearch::Drug.find_or_instantiate(input)
next_call
end
end

def greeting
  puts "Welcome to Med Search!"
end

def next_call
  input = options_query
  if input == 'quit'
    goodbye
  elsif input == 'list'
      MedSearch::Drug.drugs_researched
      next_call
  else
  MedSearch::Drug.find_or_instantiate(input)
  next_call
  end
end

def options_query
  puts "Here are your options:"
  puts "If you would like to learn information about a medication, enter the name:"
  puts "If you would like to see a list of previously researched medications, enter list:"
  puts "Type quit if you would like to exit the program."
  input = gets.strip
end

def goodbye
  puts "Goodbye!"
end
end
