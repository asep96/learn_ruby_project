#write your code here

def add(a,b)
    a+b
end

def subtract(a,b)
    a-b
end

def sum(array)
    array_sum=0
    array.each do |i|
        array_sum+=i
    end
    array_sum
end

def multiply(array)
    array_product = 1
    array.each do |i|
        array_product *= i
    end
    array_product
end

def power(a,b)
    a**b
end

def factorial(number)
    if number == 0
        number = 1
    else
        multiply_by = number-1
        while multiply_by > 0 do
            number *= multiply_by
            multiply_by -= 1
        end
    end
    number
end