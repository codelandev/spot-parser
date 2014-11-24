module Spot
  module Parser
    module Generators
      class Base
        attr_accessor :document_type, :params

        def initialize(document_type, params)
          self.document_type = document_type
          self.params = params
        end

        def render
          raise NotImplementedError
        end
      end
    end
  end
end
