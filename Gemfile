source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.1'

gem 'rails', '~> 5.2.0'
  gem 'pg'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'devise'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'mini_magick', '~> 4.8'
gem 'sprockets', '3.6.3'
gem 'therubyracer'
gem 'less-rails' #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem 'twitter-bootstrap-rails'
gem 'devise-bootstrap-views'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'font-awesome-sass', '~> 4.4.0'
gem 'rails-i18n', '~> 5.1' # For 5.0.x, 5.1.x and 5.2.x
gem 'simple_form'
gem 'haml'
gem 'carrierwave', '~> 1.0'
gem 'jquery-turbolinks'
gem 'masonry-rails', '~> 0.2.4'
gem 'bootstrap-sass', '~> 3.3.7'
gem 'jquery-rails'
gem 'coffee-script', '~> 2.4'
gem 'react-rails', '~> 2.4'
gem 'will_paginate'
gem 'will_paginate-bootstrap'
gem 'trix', '~> 0.9.0'
gem 'activeadmin'
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rspec-rails', '~> 3.7'
end

group :test do
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

 group :production, :staging do
      gem 'rails_12factor'
    end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
