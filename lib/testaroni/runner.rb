class Testaroni
  class Runner
    attr_reader :test_block
    def initialize(&test_block)
      @test_block = test_block
    end
    
    def call
      instance_eval(&test_block)
    end

    # Base level helpers
    def make_sure(value)
      # Returns an object with access to methods ( .equals .is_not )
      Testaroni::Evaluation.new(value)
    end
  end
end