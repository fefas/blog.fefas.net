module Jekyll
  module PostImage

    def postImageUrl(input)
      imagePrefix = context.registers[:page].path[7..-4]
      imageName = context.registers[:page].image.downcase.gsub(/\s/, '-')

      '/assets/images/posts/' + imagePrefix + '-' + imageName + '.jpg'
    end

  end
end

Liquid::Template.register_filter(Jekyll::PostImage)
