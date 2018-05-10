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
end
