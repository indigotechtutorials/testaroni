class Testaroni
  module Test
    def test(description, &block)
      # Run this in an isolated context with helpers included
      test_runner = Testaroni::Runner.new(description, &block)
      test_runner.call
    end
  end
end