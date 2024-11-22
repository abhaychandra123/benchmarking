
import Pkg
Pkg.add("Polynomials")
Pkg.add("Plots")
using Plots

using Polynomials
function polynomial_solver()
    println("Enter the degree of the polynomial:")
    degree = parse(Int, readline())

    coefficients = []
    for i in 0:degree
        println("Enter coefficient for x^$i:")
        push!(coefficients, parse(Float64, readline()))
    end

    poly = Polynomial(reverse(coefficients))
    println("The polynomial is: $poly")

    roots = roots(poly)
    println("The roots of the polynomial are: $roots")

    # Plotting the polynomial
    x = range(-10, stop=10, length=1000)
    y = polyval(poly, x)
    plot(x, y, label="Polynomial")
    scatter!(roots, zeros(length(roots)), label="Roots", color=:red)
    xlabel!("x")
    ylabel!("f(x)")
    title!("Polynomial and its Roots")
    display(plot)
end

polynomial_solver()