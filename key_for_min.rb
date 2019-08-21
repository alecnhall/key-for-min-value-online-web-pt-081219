# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require "pry"
name_hash = {:blake => 500, :ashley => 2, :adam => 1}

def key_for_min_value(name_hash)
  lowest_value = nil
  lowest_key = nil
  name_hash.collect do |name, age|
    if lowest_value == nil || age < lowest_value
      lowest_value = age
      lowest_key = name
    end
  end
  p lowest_key
end

key_for_min_value(name_hash)
