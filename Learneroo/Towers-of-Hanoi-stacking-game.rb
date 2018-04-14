https://www.learneroo.com/modules/71/nodes/402

Challenge
Above, you moved disks from Peg 1 to Peg 3, but in this challenge, you need to move 2 disks from any starting peg to any goal peg.

You will be given two numbers (from 1 to 3) as input - the starting peg, and the goal peg. Write a function that calculates how to move 2 disks from the starting peg to the goal peg. Print out the steps.

Output Format:
Print the peg to move from, an arrow "->", and the peg to move to. For example, to move from peg 1 to peg 3, print "1->3".

Print all the steps for a given case on its own line. Print a newline after each case.


  Input	Correct Output	Your Output
  1 3	1->2 1->3 2->3	1->2 1->3 2->3
  1 2	1->3 1->2 3->2	1->3 1->2 3->2
  2 3	2->1 2->3 1->3	2->1 2->3 1->3
  2 1	2->3 2->1 3->1


    def do_stuff(a, b)
    	case a + b
    		when 4 then c = 2
    		when 3 then c = 3
    		when 5 then c = 1
    	end
    	print "#{a}->#{c} "
    	print "#{a}->#{b} "
    	print "#{c}->#{b}\n"
    end


    #boilerplate code
    t = gets.to_i
    for i in 1..t do
    	a, b = gets.strip.split.map {|i| i.to_i}
    	do_stuff(a, b)
    end



NOW FOR N NUMBER OF DISKS:

    def move_n(n, start=1, goal=3)
        inter =  case start + goal
                when 4 then 2
                when 3 then 3
                when 5 then 1
             end
        if n == 2
            print "#{start}->#{inter} #{start}->#{goal} #{inter}->#{goal} "
        else
            move_n(n-1, start, inter)
            print "#{start}->#{goal} "
            move_n(n-1, inter, goal)
        end
    end


# OR
#
#
#     def move_n(n, a=1, b=3)
#         c =  case a + b
#                 when 4 then 2
#                 when 3 then 3
#                 when 5 then 1
#                 end
#         if n == 2
#             print "#{a}->#{c} #{a}->#{b} #{c}->#{b} "
#         else
#             move_n(n-1, a, c)
#             print "#{a}->#{b} "
#             move_n(n-1, c, b)
#         end
#     end


    #boilerplate code
    t = gets.to_i
    for i in 1..t do
        a = gets.strip.to_i
        move_n(a)
        print "\n"
    end


Input    	Correct Output   	Your Output
3	1->3 1->2 3->2 1->3 2->1 2->3 1->3
4	1->2 1->3 2->3 1->2 3->1 3->2 1->2 1->3 2->3 2->1 3->1 2->3 1->2 1->3 2->3
5	1->3 1->2 3->2 1->3 2->1 2->3 1->3 1->2 3->2 3->1 2->1 3->2 1->3 1->2 3->2 1->3 2->1 2->3 1->3 2->1 3->2 3->1 2->1 2->3 1->3 1->2 3->2 1->3 2->1 2->3 1->3
