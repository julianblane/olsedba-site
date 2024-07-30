module Jekyll
    class ProjectPages < Generator
      safe true
  
      def generate(site)
        site.categories.each do |category, posts|
          site.pages << ProjectPage.new(site, category, posts)
        end
      end
    end
  
    # Subclass of `Jekyll::Page` with custom method definitions.
    class ProjectPage < Page
      def initialize(site, category, posts)
        @site = site             # the current site instance.
        @base = site.source      # path to the source directory.
        @dir  = category         # the directory the page will reside in.
  
        # All pages have the same filename, so define attributes straight away.
        @basename = 'index'      # filename without the extension.
        @ext      = '.html'      # the extension.
        @name     = 'index.html' # basically @basename + @ext.
  
        # TODO: project-dependant title (micro-description of project)

        # Initialize data hash with a key pointing to all posts under current category.
        project = site.data["projects"][category] || {}
        @data = {
          'short_title' => project['name'],
          'title' => "#{project['name']}: updates y contenido del proyecto",
          'description' => project['description'],
          'posts' => posts
        }
  
        # Look up front matter defaults scoped to type `categories`, if given key
        # doesn't exist in the `data` hash.
        data.default_proc = proc do |_, key|
          site.frontmatter_defaults.find(relative_path, :categories, key)
        end
      end
  
      # Placeholders that are used in constructing page URL.
      def url_placeholders
        {
          :path       => @dir,
          :category   => @dir,
          :basename   => basename,
          :output_ext => output_ext,
        }
      end
    end
  end
  