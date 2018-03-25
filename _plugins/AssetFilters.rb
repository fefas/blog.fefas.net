module Jekyll
  module AssetFilters
    def asset_url(file)
        raise "Git is not installed" unless isGitInstalled?

      "/assets/#{file}?version=#{gitHash}"
    end

    def image_url(imageFile)
      asset_url "images/#{imageFile}"
    end

    def post_image_url(imageName)
      postId = @context.registers[:page].path[7..-4]
      imageFile = postId + '-' + imageName.downcase.gsub(/\s/, '-') + '.jpg'

      image_url imageFile
    end

    def post_image(imageName)
      imageUrl = post_image_url imageName

      "![#{imageName}](#{imageUrl})"
    end

    def isGitInstalled?
      null = RbConfig::CONFIG['host_os'] =~ /msdos|mswin|djgpp|mingw/ ? 'NUL' : '/dev/null'
      system "git --version >>#{null} 2>&1"
    end

    def gitHash
      File.basename(%x{git rev-parse --short HEAD}.strip)
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetFilters)
