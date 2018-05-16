module PostsHelper
	def imagen_for(post, options = { size: 1000 })
    size = options[:size]
    style = options[:style]
    if post.imagen?
      if size <= 1000
        image_tag post.imagen.url(:thumb), width: size, height: 401, alt: post.title, class: 'imagen-image', style: style
      else
        image_tag post.imagen.url, width: size, height: 401, alt: post.title, class: 'imagen-image', style: style
      end
    else
      image_tag 'default-avatar.png', width: size, height: 401, alt: 'avatar image', class: 'imagen-image', style: style
    end
  end

def tag_links(tags)
  tags.split(",").map{|tag| link_to tag.strip, tag_path(tag.strip) }.join(", ") 
end

def tag_cloud(tags, classes)
  max = tags.sort_by(&:count).last
  tags.each do |tag|
    index = tag.count.to_f / max.count * (classes.size-1)
    yield(tag, classes[index.round])
  end
end

end
