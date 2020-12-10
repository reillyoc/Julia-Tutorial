# Julia introduction

# Best place to introduce yourself to julia is:
# https://benlauwens.github.io/ThinkJulia.jl/latest/book.html

# Objectives:
# 1. Get familiarised with Atom and Julia
# 2 Learn how arrays work in Julia
# 3. Learn how to make for loops
# 4. Learn how to write functions

## Atom and Julia

# Atom - script editor
# Julia - programming language
# Julia REPL (terminal)
# Packages and Panes in Atom
# Packages in Julia
# Help in Julia

## General Comments
# To run a line/function and stay on the line/function, click on a line and type CTRL + ENTER (for Windows) and COMMAND + ENTER (for Mac)
# To run a line/function and move to the next batch of code, click on the line and type SHIFT + ENTER (for both Windows and Mac)
# Any answer will pop up on your script. You can type code into the REPL below and the answer will return in the REPL.
# Any plots you make will open in the Plots tab.
# You can drag and drop tabs to suit whatever you want


## Arrays in Julia

# An array is a sequence of values (any type of value)
[10, 20, 30, 40] # sequence of integers
["crunchy frog", "ram bladder", "lark vomit"] # sequence of strings
["spam", 2.0, 5, [10, 20]] # sequence of strings, floating-point number, integer, and another array
[]
cheeses = ["Cheddar", "Edam", "Gouda"] # you assign arrays to a name using =
cheeses[2] # you can access elements of the array using the index

cheeses[3] = "Cheeeeese , Gromit!" # you can replace specific parts of an array
cheeses

# You can slice arrays
cheeses[1:2]

# Dot operator
[1, 2, 3] .^ 3 # dot operator applys the operator to each element of the array

## For loops

for i in 1:4
    println("Hello Hello")
end

for i in 1:4
    if i % 2 > 0 #the % operator returns the remainder
        println("odd number")
    else
        println("even number")
    end
end

1 % 2 > 0
2 % 2 > 0

array1 = zeros(5) #creates an array of zeros

for i in 1:length(array1)
    array1[i]=i
end

# Exercise 1
# Create a for loop which takes an array filled with zeros (any length) and fills each element sequentially with the square of i
# Next, change this for loop so it takes an array with zeros and fills each element sequentially where even i numbers are squared and off i numbers are multiplied by three

2 ^ 2 # to square use ^ 2
2 * 3 # to multiply by three use * 3

# Functions
# writing your own functions are incredibly important. Remember that what happens in a functions stays in the function (like las vegas). except if you explicitly tell the function to RETURN something
function print_hello(number)
    for i in 1:number
        println("hello")
    end
    return
end

print_hello(3)

# You can use a function within a function
function square_cube(number)
    if number % 2 > 0
        new = number ^ 3
    else
        new = number ^ 2
    end
    return new
end

square_cube(5)

function myello(x)
    array1 = zeros(x)
    for i in 1:x
        array1[i] = square_cube(i)
    end
    return array1
end

myello(4)

# "Special function" - let block
# within this let block, everything stays within the let block (like a function) unless you explicitly tell it to return something. We will use let blocks for creating figures later
let
    array2 = zeros(5)
    for i in 1:length(array2)
        array2[i]=i
    end
    return array2
end

# Exercise 2
# Write a function that takes any string (e.g "christmas") and then prints this string the number of times you specify. (Both the string and the number are variables in the function)

function chrimmus(x)
    array1 = zeros(x)
    for i in 1:x
        println("Merry Chrysler")
    end
    return array1
end

chrimmus(6)
