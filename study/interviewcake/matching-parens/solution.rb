module InterviewCake
  class MatchingParens
    attr_reader :stack
    def initialize
      reset
    end

    def reset
      @stack = []
    end

    def perform(s, open_paren_position)
      reset
      s.length.times do |position|
        if position < open_paren_position 
          next
        end

        if s[position] == "(" && position == open_paren_position
          puts "set init"
          @stack.push({t: '(', pos: position})
          next
        end

        if s[position] == "("
          puts "pos: #{position} open"
          @stack.push({t: '(', pos: position})
          next
        end

        if s[position] == ")"
          puts "pos: #{position} close. L= #{@stack.length}"
          if @stack.length == 1
            return position
          end

          if @stack.last[:t] == '('
            @stack.pop
          end
          next
        end
      end
    end
  end
end
