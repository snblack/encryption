#подключаем библиотеку для шифрования
require "digest"

puts "Введите слово или фразу для шифрования:"
phrase = STDIN.gets.chomp

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"

way = STDIN.gets.chomp.to_i

if way == 1
  puts "Вот что получилось:"
  puts Digest::MD5.hexdigest(phrase)
elsif way == 2
  puts "Вот что получилось:"
  puts Digest::SHA1.hexdigest(phrase)
else puts "Выберите варинат 1 или 2"
end
