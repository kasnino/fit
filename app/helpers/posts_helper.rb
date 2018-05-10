module PostsHelper
	def imagen_for(post, options = { size: 280 })
    size = options[:size]
    style = options[:style]
    if post.imagen?
      if size <= 280
        image_tag post.imagen.url(:thumb), width: size, height: size, alt: post.title, class: 'avatar-image', style: style
      else
        image_tag post.imagen.url, width: size, height: size, alt: post.title, class: 'avatar-image', style: style
      end
    else
      image_tag 'default-avatar.png', width: size, height: size, alt: 'avatar image', class: 'avatar-image', style: style
    end
  end
end
