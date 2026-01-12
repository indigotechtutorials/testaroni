class Testaroni
  class Runner
    attr_reader :description, :test_block
    def initialize(description, &test_block)
      @description = description
      @test_block = test_block
    end
    
    def call
      instance_eval(&test_block)
    end

    # Base level helpers
    def make_sure(value)
      # Returns an object with access to methods ( .equals .is_not )
      Testaroni::Evaluation.new(self, value)
    end
  end
end