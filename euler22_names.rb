
class NameSum
  
  def initialize(names_file)
    @names = readfile(names_file)
    @name_array = make_lines(@names)
    puts @name_array.size
    @letter_values = letter_values	
  end
  
  def readfile(file)
    text=File.open(file).read
  end

  def make_lines(line_of_strings)
    lines = Array.new
    line_of_strings.gsub!('"','')
    lines = line_of_strings.split(",").map(&:to_s)
    return lines.sort
  end
  
  def number_of_lines
    @number_of_lines = @name_array.size
  end

  def chop_line(line)
    row_letters_array = line.split("").map(&:to_s)
    return row_letters_array
  end
  
  def letter_values
    letter_values = Hash.new
    value = 0
    ('A'..'Z').each do |letter|
      value +=1
      h2 = { letter => value }
      letter_values.merge!(h2)
    end
    return letter_values
  end

  def calculate_one_line_sum(word)
     word_sum=0
     chop_line(word).each do |letter|
       word_sum += @letter_values[letter]
     end
     return word_sum
  end

  def calculate_total_sum
    @total_sum = 0
    counter = 0
    @name_array.each do |name|
      counter +=1    
      @total_sum += calculate_one_line_sum(name) * counter
    end
    puts @total_sum
  end
        
  def display_letter_points_hash
    puts @letter_values
  end

  def put_sums
    puts @sum_of_names
  end
    
  def put_lines
    puts @name_array
  end


end

names = NameSum.new('names.txt')
names.calculate_total_sum

puts names.number_of_lines







