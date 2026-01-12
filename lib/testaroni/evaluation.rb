# Responsible for handling questions after calling make_sure or other methods
class Testaroni
  class Evaluation
    attr_reader :original_value
    def initialize(original_value)
      @original_value = original_value
    end

    def equals(matching_value)
      if original_value == matching_value
        puts "✅ Test passed"
      else
        puts "❌ Test failed"
      end
    end

    def is_not(matching_value)
      if original_value != matching_value
        puts "✅ Test passed"
      else
        puts "❌ Test failed"
      end
    end
  end
end