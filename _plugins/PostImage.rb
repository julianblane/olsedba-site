module Jekyll
  class PostImage < Generator
    def generate(site)
      # Generate a map of all posts grouped by the exact same tags and categories combination
      tag_map = Hash.new { |h, k| h[k] = [] }
      site.posts.each do |post|
        post.data["image"] = "#{site.baseurl}/assets/posts/#{post.date.to_s.split(' ').first}-#{post.data['slug']}.jpeg"
      end
    end
  end
end