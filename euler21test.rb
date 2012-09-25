require "test/unit"
require "euler21"

class Euler21test < Test::Unit::TestCase
    include Euler21

    def test_sum_of_divisors_1
        assert_equal 3,  sum_of_divisors(4), "Expecting 3" 
    end

    def test_sum_of_divisors_2
        assert_equal 8, sum_of_divisors(10), "Expecting 8"
    end

    def test_amicable_pair
        assert_equal 220, sum_of_divisors(284)
        assert_equal 284, sum_of_divisors(220)
    end

    def euler21_1
        assert_equal 0 , run(11)
    end
end
