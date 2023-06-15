function fib(n::Integer)
    if n == 1
        return 1
    elseif n == 2
        return 1
    else
        return fib(n-1)+fib(n-2)
    end
end

function ciag(n::Integer)
    i = 0
    list = Float64[]
    for x in 1:n
        if i <= 1  
            println("$x: $(fib(x))")
            push!(list, fib(x))
            i+=1
        else
            wyraz::Float64 = list[end] + list[end-1]
            println("$x: $(list[end]+list[end-1])")
            push!(list, wyraz)
        end
    end
end

ciag(300)
