#write your code here

def add(a, b)
    return a + b
end 


def subtract(a, b)
    return a - b
end 


def sum(array)
    total = 0
    array.each do |a|
        total = total + a
    end 
    return total
end 


def multiply(a, b) 
    return a * b
end 


def power(a, b)
    return a ** b
end 


def factorial(a)
    total = 1
    while a > 0
        total = total * a
        a = a - 1
    end
    return total
end    