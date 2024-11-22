# Introduction to Julia Syntax

# 1. Variable Declaration
x = 10
y = 20.5
name = "Julia"
is_active = true

println("x: $x, y: $y, name: $name, is_active: $is_active")

# 2. Basic Arithmetic Operations
sum = x + y
difference = x - y
product = x * y
quotient = x / y

println("Sum: $sum, Difference: $difference, Product: $product, Quotient: $quotient")

# 3. Conditional Statements
if x > y
    println("x is greater than y")
elseif x < y
    println("x is less than y")
else
    println("x is equal to y")
end

# 4. Loops
# For Loop
println("For Loop:")
for i in 1:5
    println(i)
end

# While Loop
println("While Loop:")
j = 1
while j <= 5
    global j
    println(j)
    j += 1
end

println(j)

# 5. Functions
function greet(name)

    return "Hello, $name !"
end

println(greet("Julia"))

# 6. Arrays
arr = [1, 2, 3, 4, 5]
println("Array: ", arr)

# Accessing elements
println("First element: ", arr[1])

# 7. Dictionaries
dict = Dict("name" => "Julia", "age" => 10)
println("Dictionary: ", dict)

# Accessing values
println("Name: ", dict["name"])

# 8. List Comprehensions
squares = [i^2 for i in 1:5]
println("Squares: ", squares)

# 9. Error Handling
try
    println(1 / 0)
catch e
    println("Error: ", e)
end

# 10. Modules and Using Packages
# Using the `Dates` module from the standard library
using Dates
current_date = Dates.today()
println("Current Date: ", current_date)

# This is a basic introduction to Julia syntax. For more advanced topics, refer to the official Julia documentation.