# Responsible for handling questions after calling make_sure or other methods
class Testaroni
  class Evaluation
    include Testaroni::Message
    attr_reader :original_value, :runner
    def initialize(runner, original_value)
      @runner = runner
      @original_value = original_value
    end

    def equals(matching_value)
      if original_value == matching_value
        test_passed_message
      else
        test_failed_message
      end
    end

    def is_not(matching_value)
      if original_value != matching_value
        test_passed_message
      else
        test_failed_message
      end
    end
  end
end