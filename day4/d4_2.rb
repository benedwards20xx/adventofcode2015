require 'digest'
md5 = Digest::MD5.new
puts "Enter secret key:"
secret = STDIN.gets.chomp
puts "Enter num zeroes:"
numZeroes = STDIN.gets.chomp.to_i
i = 1
h = ""
until h[0, numZeroes] == "0" * numZeroes
  h = md5.hexdigest(secret + i.to_s)
  i += 1
end 
puts "lowest num: #{i-1}, hex: #{h}"