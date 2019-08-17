module Jekyll
  class RenderAudioTag < Liquid::Tag
    def initialize(tag_name, source, tokens)
      super
      @source = source.strip
    end

    def render(context)
      "<audio controls src='#{@source}'>"\
      "Your browser does not support the <code>audio</code> element."\
      "</audio>"
    end
  end
end

Liquid::Template.register_tag('audio', Jekyll::RenderAudioTag)
