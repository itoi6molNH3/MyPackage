function myiseven(x::Int)
    return x % 2 == 0
end

#@assert myiseven(1) == false
#@assert myiseven(2) == true


function bisect(f, a::Float64, b::Float64, tol::Float64)
    i=(a+b)/2.0
    if f(a) * f(b) > 0
        error("f(a) and f(b) must have opposite signs")
    end
    while abs(a-b)>tol
        if  f(a)==0
            i=a
            break
        elseif f(b)==0
            i=b
            break        
        else
            if f(a)*f(i)>0
                a=i
            else
              b=i
            end
           i=(a+b)/2.0
        end
    end 
  return (i)
end