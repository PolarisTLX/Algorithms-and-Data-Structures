https://www.learneroo.com/modules/95/nodes/530

There are 3 kinds of Brackets: [] {} (). Given a String of characters, check if all the brackets in the String are Balanced. A string is balanced if all the start and end brackets are in a correct order so they match each other.


    def do_stuff(text)
        bracket_stack = []
        text.each_char do |char|
            case char
            when "{", "[", "("
                bracket_stack << char
            when "}"
                if bracket_stack[-1] == "{"
                    bracket_stack.pop
                else
                    print "false\n"
                    return false
                end
            when "]"
                if bracket_stack[-1] == "["
                    bracket_stack.pop
                else
                    print "false\n"
                    return false
                end
            when ")"
                if bracket_stack[-1] == "("
                    bracket_stack.pop
                else
                    print "false\n"
                    return false
                end
            end
        end
        # Needed new line
        print bracket_stack.length == 0  ? "true\n" : "false\n"
    end

    t = gets.to_i
    for i in 1..t do
        text = gets
        do_stuff(text)
    end


    Input	Correct     Output	  Your Output
    {}(hello)[world]	true
    [({}{}{})([])]  	true
    ([)]	            false
