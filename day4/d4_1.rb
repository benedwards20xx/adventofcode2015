require 'digest'
md5 = Digest::MD5.new
puts "Enter secret key:"
secret = STDIN.gets.chomp
i = 1
h = ""
until h[0, 5] == "00000"
  h = md5.hexdigest(secret + i.to_s)
  i += 1
end 
puts "lowest num: #{i-1}, hex: #{h}"