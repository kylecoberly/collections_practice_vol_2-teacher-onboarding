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
    puts data_two.inspect
    puts data_one.inspect
    data_one[1].each_with_index.map { |item, index|
      data_two[index]["blake"].merge(item)
    }
end
