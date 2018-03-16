module Jekyll
  class PostImageA < Liquid::Tag

    def initialize(tagName, imageName, tokens)
      super

      @imageName = imageName.strip
    end

    def render(context)
      imageUrl = imageUrl(context)

      "![#{@imageName}](#{imageUrl})"
    end

    def imageUrl(context)
      imagePrefix = context.registers[:page].path[7..-4]
      imageName = @imageName.downcase.gsub(/\s/, '-')

      '/assets/images/posts/' + imagePrefix + '-' + imageName + '.jpg'
    end

  end
end

Liquid::Template.register_tag('postImage', Jekyll::PostImageA)
