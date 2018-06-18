require 'haml'

module Jekyll
  module HamlFilter
    def render_haml(content)
      Haml::Engine.new(content).render
    end
  end
end

Liquid::Template.register_filter(Jekyll::HamlFilter)
