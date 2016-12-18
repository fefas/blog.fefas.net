module Jekyll
  module GitData
    class Generator < Jekyll::Generator

      safe true

      def generate(site)
        raise "Git is not installed" unless isGitInstalled?

        Dir.chdir(site.source) do
          site.data['git'] = gitData
          end
        end

      def gitData
        {
          'currentCommitSortHash' => currentCommitHash
        }
      end

      def isGitInstalled?
        null = RbConfig::CONFIG['host_os'] =~ /msdos|mswin|djgpp|mingw/ ? 'NUL' : '/dev/null'
        system "git --version >>#{null} 2>&1"
      end

      def currentCommitHash
        File.basename(%x{git rev-parse --short HEAD}.strip)
      end

    end
  end
end
