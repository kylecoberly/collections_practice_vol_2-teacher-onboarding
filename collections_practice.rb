def begins_with_r array
  !array.any? {|item| item[0] != 'r'}
end

def contain_a array
  array.select { |item| item.include?("a") }
end

def first_wa array
  array.find { |item| item.match /^wa/}
end

def remove_non_strings array
  array.reject { |item| !item.is_a? String}
end

def count_elements array
  array.uniq.map { |item|
    matches = array.select { |item_to_match| item_to_match[:name] == item[:name] }
    item[:count] = matches.length
    item
  }
end

def merge_data data_one, data_two
    puts data_one.inspect
    puts data_two[0].inspect
    index = 0

    data_two[0].map { |key, value|
      data_one[index++].merge(value)
    }
end
