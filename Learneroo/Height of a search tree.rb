This was not solve the way it was intended

def do_stuff(ar)
    # A tree is structured so that the first level has 1 element, the second has 2, the third 4,
    # so each doubles the length of the last.
    # Mathematically, this means the maximum elements for a given number of levels (n) is 2^(n) - 1
    # So, for example, 15 elements is the maximum for 4 levels. 16 would begin a fifth level.
    # To solve this, length = 2^n - 1
    # Solving for n means log(length + 1)/log(2) (rounded up).
    # This is mathematically equivalent to the code below (adding one and rounding down instead).

    print (Math.log(ar.length)/Math.log(2) + 1).floor, "\n"
end

t = gets.to_i
t.times do
    n=gets
    ar = gets.strip.split.map {|i| i.to_i}
    do_stuff(ar)
end
