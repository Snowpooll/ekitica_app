source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.7'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', group: :development
  #heroku 
gem 'pg', group: :production
gem 'rails_12factor', group: :production
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
#gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

#add bootstrap
gem 'bootstrap-sass'

# Use ActiveModel has_secure_password
 gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  
  #エラー画面をわかりやすく整形してくれる
  gem 'better_errors'
  
  #better_errorsの画面上にirb/pry(PERL)を表示する
  gem 'binding_of_caller'

  
  #画像編集機能の追加
  #gem 'rmagick', "~> 2.15.4", require: 'RMagick'
end

  
  #ページネーション機能
  gem 'kaminari'
  
  #画像投稿機能
  gem 'carrierwave'
  
  #ダミー入力
  gem 'faker'
  
  #URLへ自動リンクをはる
  gem 'rails_autolink'
  
  #cloudinary追加
gem 'cloudinary'