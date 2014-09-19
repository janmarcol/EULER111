
class TriangleSum
  
   def initialize(triangle)
    @triangle = readfile(triangle)
    @sum_array = Array.new
    @line_array = Array.new
    @line_array = make_lines(@triangle)
    puts @line_array
  end
  
  def readfile(file)
    text=File.open(file).read
  end

  def make_lines(triangle)
    lines = Array.new
    triangle.each_line do |line|
      lines << line
    end
    return lines
  end
  
  def number_of_lines
    @number_of_lines = line_array.size
  end

  def chop_line(line)
    row_array = line.split(" ").map(&:to_i)
    return row_array
  end
  
  def compare(a1,a2)
    if a1 > a2 then 
      #puts a1
      return a1
    else 
      #puts a2
      return a2
    end
  end 

  def sum_rows(row_1, row_2)
    sum_row = row_1
    (0..(row_2.size-1)).each do |item| 
      if item == 0 then
        row_2[item] +=  row_1[item] 
      elsif item < (row_1.size)	
	      row_2[item] += compare(row_1[item-1],row_1[item] )
      else     
        row_2[item] += row_1[item-1]        
      end
    end
    return row_2
  end
  
  def first_two_lines
    sum_array << @line_array[0].to_i
    ary = chop_line(@line_array[1])
    sum_array <<  sum_array[0] + ary[1]        
    sum_array[0] += ary[0]
  end

  def summarization
    	sum_array = []
	ary = []

        sum_array << @line_array[0].to_i
	ary = chop_line(@line_array[1])
	sum_array <<  sum_array[0] + ary[1]        
	sum_array[0] += ary[0]       
        
    (2..(@line_array.size-1)).each do |line_number|
      ary = chop_line(@line_array[line_number])      
      sum_array = sum_rows(sum_array, ary) 
      @sum_array = sum_array
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

my_triangle = TriangleSum.new('triangle.txt')




#puts my_triangle.number_of_lines

my_triangle.summarization
#my_triangle.put_lines
my_triangle.highest_sum
