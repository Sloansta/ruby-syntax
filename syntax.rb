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

print "Enter a number: "
first_num = gets.to_i
puts "Enter another number: "
second_num = gets.to_i

begin
    answer = first_num / second_num

rescue
    puts "You cannot divide by 0"
    exit
end

def check_age(age)
    raise ArgumentError, "Enter a positive number" unless age > 0
end

begin
    check_age(-1)
rescue ArgumentError
    puts "That is not an age"
end

# string functions

# single line strings would not work and it would give the text literally
puts "add them #{4 + 5}\n"

multiline_str = <<EOM
This is a very long string that contains 
interpolation like #{4 + 5} \n
EOM

puts multiline_str

puts multiline_str.include?("is")

puts multiline_str.size

puts multiline_str.count("aeiou").to_s
puts multiline_str.count("^aeiou").to_s


# OOP

class Animal
    def initialize
        puts "creating a new animal"
    end

    def set_name(new_name)
        @name = new_name
    end

    def get_name()
        @name
    end

    def name 
        @name 
    end

    def name=(new_name)
        if new_name.is_a?(Numeric)
            puts "name cant be a number"
        else
            @name = new_name
        end
    end
end

cat = Animal.new 
cat.set_name("Mike")
cat.get_name

puts cat.name

cat.name = "Fritz"

puts cat.name

class Dog 
    # Could do v
    #attr_reader :name, :height, :weight
    #attr_writer :name, :height, :weight 
    attr_accessor :name, :height, :weight 

    def bark 
        return "Generic Bark"
    end
end

rover = Dog.new
rover.name = "rover"

puts rover.name


class GermanShepard < Dog 
    def bark
        return "loud bark"
    end
end

max = GermanShepard.new

max.name = "Max"

puts max.name
puts max.bark

#modules 

require_relative "human"
require_relative "smart"

module WaterAnimal 
    def make_sound 
        puts "hsssss"
    end
end

class Gator 
    include WaterAnimal
end

small_gator = Gator.new
small_gator.make_sound

class Scientist 
    include Human 
    prepend Smart 

    def act_smart
        return "E = mc^2"
    end
end

einstien = Scientist.new

einstien.name = "Albert"

puts einstien.name 

einstien.run
puts einstien.act_smart

#polymorphism

class Bird 
    def tweet(bird_type)
        bird_type.tweet 
    end
end

class Cardinal < Bird 
    def tweet 
        puts "tweet tweet"
    end
end

class Parrot < Bird 
    def tweet 
        puts "Squawk"
    end
end

gen_bird = Bird.new 

gen_bird.tweet(Cardinal.new)
gen_bird.tweet(Parrot.new)

#symbols - Basically strings that cannot be changed 
