# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(hash)
  lowest = 1000000000000000000000
  if hash.empty?
    return nil
  else
    arr = hash.map do |key, value|
      if hash[key] <= lowest
        lowest = hash[key]
      end
    end
    hash.each do |key, value|
      if lowest == hash[key]
        return key
      end
    end
  end
end
