#this controls the interface with the user
require 'pry'
class MedSearch::CLI

def call
greeting
input = drug_query
if input == 'quit'
  goodbye
else
MedSearch::Scraper.send_info(input)
second_call
end
end

def greeting
  puts "Welcome to Med Search!"
end

def second_call
  input = drug_query
  if input == 'quit'
    goodbye
  else
  MedSearch::Scraper.send_info(input)
  second_call
  end
end

def drug_query
  puts "Enter the name of the medication you are interested in learning about or enter quit to exit:"
  input = gets.strip
end

def goodbye
  puts "Goodbye!"
end


end
