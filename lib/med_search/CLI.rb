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
  begin
   MedSearch::Drug.find_or_instantiate(input)
   rescue
        puts "I'm sorry, that medication doesn't exist in our database.  Please check your spelling and try again."
         next_call
   else
  MedSearch::Drug.drug_info(input)
  next_call
  end
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
     begin
       MedSearch::Drug.find_or_instantiate(input)
   rescue
      puts "I'm sorry, that medication doesn't exist in our database.  Please check your spelling and try again."
      next_call
    else
  MedSearch::Drug.drug_info(input)
  next_call
  end
end
end


def options_query
  puts "Here are your options:"
  puts "You can enter the name of a medication to learn more information about it.".colorize(:light_blue)
  puts "Enter list to see all previously researched medications.".colorize(:blue)
  puts "Type quit if you would like to exit the program.".colorize(:cyan)
  input = gets.strip
end

def goodbye
  puts "Goodbye!"
end
end
