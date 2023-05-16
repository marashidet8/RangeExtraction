def solution(lst)
  lst.chunk_while { |i, j| i + 1 == j }
     .map { |chunk| chunk.size > 2 ? "#{chunk.first}-#{chunk.last}" : chunk }
     .join(',')
end

# test

puts solution([-10, -9, -8, -6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20])
# Output: "-10--8,-6,-3-1,3-5,7-11,14,15,17-20"
