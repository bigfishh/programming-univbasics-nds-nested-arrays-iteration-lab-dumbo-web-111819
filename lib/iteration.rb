def join_ingredients(src)
  result = []
  ing = 0 
  while ing < src.count do 
    inner_el = src[ing]
    result << "I love #{inner_el[0]} and #{inner_el[1]} on my pizza"
    ing += 1
    end
  result
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  new_array = []
  bele = 0 
  while bele < src.count do
    toget = src[bele]
    toget.sort!
    new_array << toget.last
    bele += 1
  end
  new_array  
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total_sum = 0
  i = 0
  while i < src.count do 
    inner = src[i]
    if (inner[0] % 2 == 0) && (inner[1] % 2 == 0)
      total_sum += (inner[0] + inner[1])
    end
    i += 1 
  end
  total_sum
end
