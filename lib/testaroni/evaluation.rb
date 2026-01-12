# Responsible for handling questions after calling make_sure or other methods
class Testaroni
  class Evaluation
    attr_reader :original_value, :runner
    def initialize(runner, original_value)
      @runner = runner
      @original_value = original_value
    end

    def equals(matching_value)
      if original_value == matching_value
        puts "✅ Test passed: #{runner.description}"
      else
        puts "❌ Test failed: #{runner.description}"
      end
    end

    def is_not(matching_value)
      if original_value != matching_value
        puts "✅ Test passed: #{runner.description}"
      else
        puts "❌ Test failed: #{runner.description}"
      end
    end
  end
end