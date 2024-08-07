module Jekyll
  class NavigatorTags < Generator
    def generate(site)
      # Generate a map of all posts grouped by the exact same tags and categories combination
      tag_map = Hash.new { |h, k| h[k] = [] }
      site.posts.docs.each do |post|
        tags = post.data['tags'] + post.data['categories']
        tag_map[tags] << post
      end

      tag_map.each do |tags, posts|
        # Iterate over the posts for each tag combination
        posts.each do |post|
          index = posts.index post

          next_in_category = nil
          previous_in_category = nil
          if index
            if index < posts.length - 1
              next_in_category = posts[index + 1]
            end
          	if index > 0
              previous_in_category = posts[index - 1]
            end
          end
          post.data["next_tags"] = next_in_category unless next_in_category.nil?
          post.data["previous_tags"] = previous_in_category unless previous_in_category.nil?
        end
      end

      site.posts.docs.each do |post|
        post.data['debug'] = tag_map
      end
    end
  end
end