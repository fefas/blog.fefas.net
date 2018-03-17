module Jekyll
  module AssetUrlFilter
    def asset_url(input)
        raise "Git is not installed" unless isGitInstalled?

      "/assets/#{input}?version=#{gitHash}"
    end

    def image_url(input)
      asset_url "images/#{input}"
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

Liquid::Template.register_filter(Jekyll::AssetUrlFilter)
