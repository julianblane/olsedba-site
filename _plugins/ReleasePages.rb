module Jekyll
  class ReleasePages < Generator
    safe true

    def generate(site)
      site.tags['release'].each do |post|
        project = post.data['categories'].join('/')
        version = post.data['short_title'].split(' ').first.split('.').join('-').downcase
        post.data['permalink'] = "#{project}/#{version}"
      end
    end
  end
end