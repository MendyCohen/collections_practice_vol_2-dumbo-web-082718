def contain_a(words_arr)
  words_arr.select {|word| word.include?("a")}
end

def begins_with_r(word_arr)
  word_arr.all? {|word| word.start_with?("r")}
end

def first_wa(word_arr)
  word_arr.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(str_array)
  str_array.delete_if { |non_str| !(non_str.is_a? String) }
end

def count_elements(names_arr)
  tracker = Hash.new
  names_arr.each do |name|
    if tracker[name] == nil
      tracker[name] = 1
    else
      tracker[name] +=1
    end
  end
    tracker.map {|key, value| {:name => key, :count => value}}
    count_elements(names_arr)
end