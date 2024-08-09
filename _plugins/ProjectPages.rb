module Jekyll
    class ProjectPages < Generator
      safe true
  
      def generate(site)
        project_paths = Hash.new { |h, k| h[k] = [] }
        site.posts.docs.each do |post|
          # ignore about post
          post.data['tags'].include?('about') and next

          project = post.data['categories'].join('/')
          project_paths[project].prepend(post)
        end

        # prepend about posts so they show on top of the project page
        site.tags['about'].each do |post|
          project = post.data['categories'].join('/')
          post.data['permalink'] = "#{project}/about"
          project_paths[project].prepend(post)
        end

        project_paths.each do |path, posts|
          site.pages << ProjectPage.new(site, path, posts)
        end
      end
    end
  
    # Subclass of `Jekyll::Page` with custom method definitions.
    class ProjectPage < Page
      def initialize(site, path, posts)
        category = path.split('/').last
        project = site.data["projects"][category] || {}

        @site = site             # the current site instance.
        @base = site.source      # path to the source directory.
        @dir  = category         # the directory the page will reside in.
  
        # All pages have the same filename, so define attributes straight away.
        @basename = 'index'      # filename without the extension.
        @ext      = '.html'      # the extension.
        @name     = 'index.html' # basically @basename + @ext.
  
        # Initialize data hash with a key pointing to all posts under current category.
        @data = {
          'short_title' => project['name'],
          'title' => project['title'] || "#{project['name']}: updates y contenido del proyecto",
          'description' => project['description'],
          'posts' => posts,
          'image' => "#{site.baseurl}/assets/projects/#{category}.jpeg",
          'layout'=> "project",
          'has_about_post' => posts.any? { |post| post.data['tags'].include?('about') },
          'permalink'=> path
        }
      end
    end
  end
  