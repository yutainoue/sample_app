source 'https://rubygems.org'

gem 'bcrypt',         '3.1.11' # ハッシュ関数
gem 'bootstrap-sass', '3.3.7'
gem 'coffee-rails', '4.2.2'
gem 'faker', '1.7.3'
gem 'jbuilder',     '2.6.1'
gem 'jquery-rails', '4.3.1'
gem 'puma',         '3.9.1'
gem 'rails',        '5.0.3'
gem 'sass-rails',   '5.0.6'
gem 'travis' # CIツール
gem 'travis-lint' # travis.ymlのlinter
gem 'turbolinks',   '5.0.1'
gem 'uglifier',     '3.2.0'

group :development, :test do
  gem 'byebug',  '9.0.6', platform: :mri
  gem 'sqlite3', '1.3.13'

  ## pry
  gem 'pry-byebug'         # デバッグを実施(Ruby 2.0以降で動作する)
  gem 'pry-doc'            # methodを表示
  gem 'pry-rails'          # rails console(もしくは、rails c)でirbの代わりにpryを使われる
  gem 'pry-stack_explorer' # スタックをたどれる
end

group :development do
  gem 'listen',                '3.0.8'
  gem 'spring',                '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
  gem 'web-console',           '3.5.1'
end

group :test do
  gem 'rails-controller-testing', '1.0.2'

  ## rspec
  gem 'capybara',           '~> 2.14.4'
  gem 'database_cleaner',   '~> 1.3.0'
  gem 'factory_girl_rails', '~> 4.4.1'
  gem 'launchy',            '~> 2.4.2'
  gem 'rspec-rails',        '~> 3.1.0'
  gem 'selenium-webdriver', '~> 2.43.0'
end

group :production do
  gem 'pg', '0.18.4'
end

gem 'rake', '< 11.0'
