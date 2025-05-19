module Jekyll
  class PostMetaSEO < Generator
    def generate(site)
      # Generate a map of all posts grouped by the exact same tags and categories combination
      tag_map = Hash.new { |h, k| h[k] = [] }
      site.posts.docs.each do |post|
        post.data["image"] = "#{site.baseurl}/assets/posts/#{post.date.to_s.split(' ').first}-#{post.data['slug']}.jpeg"

        project = site.data["projects"][post.data["categories"].last.to_s]
        post.data['project'] = project

        if post.data['categories'].include?("art")
          post.data["title"] = "#{post.data['tags'].last.to_s.capitalize}: #{post.data['short_title']}"
        else
          post.data["title"] = "#{post.data['tags'].last.to_s.capitalize} de #{project['name'] if project}: #{post.data['short_title']}"
        end

        if post.data['tags'].include?("devshort") || post.data['tags'].include?("artshort")
          if project
            post.data["description"] = project["description"]
          end
        end

        post.data["seo"] ||= {}
        post.data["seo"]["name"] = post.data["title"]
      end
    end
  end
end