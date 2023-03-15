# File: lib/present.rb

class Present
    def wrap(contents)
      fail "A contents has already been wrapped." unless @contents.nil?
      @contents = contents
    end
  
    def unwrap
      fail "No contents have been wrapped." if @contents.nil?
      return @contents
    end
  end

#present = Present.new
#present.wrap(21)
#puts present.unwrap
#present.wrap("thing2")
