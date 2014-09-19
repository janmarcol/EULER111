=begin
 row_one = slice_string(string,1)
  row_sum =
  product = arr.inject(1) { |prod, element| prod * element.to_i }
  return product
=end

class TriangleFile
  
  def initialize(triangle)
    @triangle = readfile(triangle)
    @sum_array = Array.new
    @line_array = Array.new
    #puts @triangle
    @line_array = make_lines(@triangle)
    #puts @line_array
  end
  
  def readfile(file)
    #text=File.open(file).read
    File.open(file).read
  end

  def make_lines(triangle)
    lines = Array.new
    triangle.each_line do |line|
      lines << line
    end
    return lines
  end
  
  def number_of_lines
    @number_of_lines = @line_array.size
  end

  def chop_line(line)
    row_array = line.split(" ").map(&:to_i)
    return row_array
  end
  
  def compare(a1,a2)
    puts "a1: #{a1}, a2: #{a2}"
    if a1 > a2
      a1
     # puts a1 #rescue puts a1
    else 
       a2
    end
  end 

  def sum_rows(row_1, row_2)
    puts "row 1: #{row_1},  row 2: #{row_2}"
    (0..(row_2.size-1)).each do |item|
      #puts "item: #{item}"
      #puts "sum array: #{@sum_array}"
      #puts "row 1: #{row_1},  row 2: #{row_2}"
     
      if item == 0 then
        #puts "@sum_array[item]: #{@sum_array[item]}"
	      #puts "row_2[item]: #{row_2[item]}, @sum_array[item]: #{@sum_array[item]}"
        @sum_array[item] += row_2[item]
      elsif item == (row_1.size)
        #puts "row_1.size: #{row_1.size}"
        #puts puts "sum array: #{@sum_array}"
        #puts "row_2[item]: #{row_2[item]}, @sum_array[item-1]: #{@sum_array[item-1]}, @sum_array[item-1]: #{@sum_array[item]}"

        @sum_array << ((@sum_array[item-1] + row_2[item]))
	#puts "sum array: #{@sum_array}"
      end
    end
  end
  
  def summarization
    
    #puts "@line_array.size: #{@line_array.size}"
    (0..(@line_array.size-1)).each do |line_number|
      puts "line_number: #{line_number}"
      if line_number == 0 then 
        puts "line 0!!!"
        
        @sum_array << @line_array[line_number].to_i
        puts "sum array size: #{ @sum_array.size}"
	puts "sum array: #{@sum_array}"
	
      else 
	puts "second branch #{@line_array[line_number]}"    
	puts "sum array size: #{ @sum_array.size}"
        puts "chop_line(@line_array[line_number]): #{(chop_line(@line_array[line_number]))}"
	ary = chop_line(@line_array[line_number])
        puts "ary: #{ary}"
	puts
	sum_rows(@sum_array, ary) 
         
      end
      puts
    end

   end     

  def highest_sum
    puts @sum_array.max
  end

  def put_sums
    puts @sum_array
  end
    
  def put_lines
    puts @line_array#.to_s
  end

  def display
    puts @triangle
  end  
  


end

my_triangle = TriangleFile.new('euler18_triangle.txt')

puts my_triangle.number_of_lines

gets

my_triangle.summarization
#my_triangle.put_lines
my_triangle.highest_sum
gets
