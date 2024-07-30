module Jekyll
  class PostMetaSEO < Generator
    def generate(site)
      # Generate a map of all posts grouped by the exact same tags and categories combination
      tag_map = Hash.new { |h, k| h[k] = [] }
      site.posts.each do |post|
        post.data["image"] = "#{site.baseurl}/assets/posts/#{post.date.to_s.split(' ').first}-#{post.data['slug']}.jpeg"
        
        if post.data['categories'].include?("art")
          post.data["title"] = "#{post.data['tags'].last.to_s.capitalize}: #{post.data['short_title']}"
          # TODO: use micro-description of projects for the shorts
        else
          post.data["title"] = "#{post.data['tags'].last.to_s.capitalize} de #{post.data['categories'].last.to_s.capitalize}: #{post.data['short_title']}"
        end

        post.data["seo"] ||= {}
        post.data["seo"]["name"] = post.data["title"]
      end
    end
  end
end