require "spot/parser/generators/base"
require "slim"

module Spot
  module Parser
    module Generators
      class HTML < Base
        def render
          variables = {
            :promoter => params.delete(:promoter),
            :store => params.delete(:store),
            :extra => params
          }
          file = File.join(ROOT_PATH, 'templates', "#{document_type}.html.slim")
          Slim::Template.new(file).render(Object.new, variables)
        end
      end
    end
  end
end
