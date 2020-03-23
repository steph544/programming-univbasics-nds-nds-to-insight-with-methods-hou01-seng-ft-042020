$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
require 'pry'

def gross_for_director(director_data)
  total=0
  element_index=0
  inner_len=director_data[:movies].length
   while element_index<inner_len do
     total += director_data[:movies][element_index][:worldwide_gross]
     element_index+=1
   end
   total
  end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds) 
  binding.pry 
  results={}
  director_index=0 

  while director_index < nds.length do
    director_name = nds[director_index][:name]
    results[director_name] = 0
	  row_index = 0

    while row_index<nds[director_index][:movies].length do
    results[director_name] += gross_for_director(nds[0])
    row_index +=1
    end
    director_index += 1
 end
results
end

