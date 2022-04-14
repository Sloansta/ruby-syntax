# Comment in Ruby

# Numbers and string manipulation
=begin
print "enter a value"

first_num = gets.to_i

print "enter another value"

second_num = gets.to_i

puts first_num.to_s + " + " + second_num.to_s + " = " + (first_num + second_num).to_s

num_one = 1.000

num99 = 0.999

puts num_one.to_s + " - " + num99.to_s + " = " + (num_one - num99).to_s
=end

big_float = 1.123232323

puts (big_float + 0.0000005).to_s


#Everything is an object

puts 1.class 

puts "string".class


# file I/O
write_handler = File.new("yourSum.out", "w")

write_handler.puts("Random text").to_s

write_handler.close

data_from_file = File.read("yourSum.out")

puts data_from_file


# conditional

# multiline commenty
=begin
    
rescue => exception
    
=end

age = 12

if (age >= 5) && (age <= 6)
    puts "You are in Kindergarten"
elsif (age >= 7) && (age <= 13)
    puts "You are in middle school"
else 
    pust "stay home"
end

unless age > 4
    puts "no school"
else   
    puts "go to school"
end

puts "youre young" if age < 30

greeting = "French"

case greeting
when "French"
    puts "Bonjour"
when "Spanish"
    puts "Hola" 
else "English"
    puts "Hello"
end

puts (age >= 50) ? "old" : "young"


#loops 

x = 1
loop do 
    x += 1
    next unless (x % 2) == 0
    puts x
    break if x >= 10
end

y = 1

while y <= 10
    y += 1
    next unless (y % 2) == 0
    puts y 
end

a = 1
until a >= 10
    a += 1
    puts a     
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8]

for number in numbers 
    puts "Number: #{number}"
end

groceries = ["bananas", "potatos", "pasta"]

groceries.each do |food|
    puts "Get some #{food}"
end

(0..5).each do |i|
    puts "# #{i}"
end

# functions 

def add_nums(num_1, num_2)
    return num_1.to_i + num_2.to_i    
end

puts add_nums(3, 7)

# exceptions 

