# A simple main program to find the solution of euler21

require_relative 'euler21'

MAX = 10000

class Euler21soln
    include Euler21
end

program = Euler21soln.new()
program.run(MAX)
