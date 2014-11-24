require "spot/parser/version"
require "spot/parser/generators/html"

module Spot
  module Parser
    ROOT_PATH = File.join(File.dirname(__FILE__), '..', '..')

    class << self
      def generate_html(type, params)
        Generators::HTML.new(type, params).render
      end
    end
  end
end
