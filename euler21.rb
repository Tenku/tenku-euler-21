# euler21.rb
# Find the sum of all aamicable numbers less than 10,000 

module Euler21
   
    # Find the divisors of n.  Does not assume n is a Fixnum, but wouldn't make sense otherwise... 
    def divisors(n)
        div = [1]
        2.upto(Math.sqrt(n).floor) do |x|
            # If x divides n, add x and x/n to the list of divisors of n
            if n % x == 0
                div << x
                div << (n/x) unless x == (n/x)
            end
        end

        return div

    end

    # Returns true if n is prime.  Behavior is not guaranteed if n is not a Fixnum.
    def prime?(n)
        # A number is prime if the only divisors are 1 and n.
        divisors(n).size == 2
    end


    # Returns the sum of divisors of n.
    def sum_of_divisors(n)
        sum_numbers(divisors(n))
    end

    # Sums an array of numbers
    def sum_numbers(n)
        sum = 0
        n.each do |x|
            sum += x
        end
        
        return sum
    end

    # Find the sum of amicable pairs under bound.
    def run(bound)

        result = []
        sum = 0

        1.upto(bound) do |n|
            result << sum_of_divisors(n)
        end

        # Since array indices start at 0, need n+1
        # From the definition of amicable pairs, d(a) = b and d(b) = a implies that
        # d(d(a)) = a
        1.upto(bound-1) do |n|
            if result[n] <= bound and result[n] != (n+1) and (n+1) == result[result[n]-1]
                sum += n
            end
        end

        puts sum
    end

end 
