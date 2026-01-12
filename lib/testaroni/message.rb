class Testaroni
  module Message
    def test_passed_message
      puts "✅ Test passed: #{runner.description}"
    end

    def test_failed_message
      puts "❌ Test failed: #{runner.description}"
    end
  end
end