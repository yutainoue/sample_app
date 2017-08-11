source 'https://rubygems.org'

gem 'coffee-rails', '4.2.2'
gem 'jbuilder',     '2.6.1'
gem 'jquery-rails', '4.3.1'
gem 'puma',         '3.9.1'
gem 'rails',        '5.0.3'
gem 'sass-rails',   '5.0.6'
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

  ## rspec
  gem 'factory_girl_rails', '~> 4.4.1'
  gem 'rspec-rails',        '~> 3.1.0'
end

group :test do
  gem 'guard',                    '2.13.0'
  gem 'guard-minitest',           '2.4.4'
  gem 'minitest-reporters',       '1.1.14'
  gem 'rails-controller-testing', '1.0.2'

  ## rspec
  gem 'capybara',           '~> 2.4.3'
  gem 'database_cleaner',   '~> 1.3.0'
  gem 'faker',              '~> 1.4.3'
  gem 'launchy',            '~> 2.4.2'
  gem 'selenium-webdriver', '~> 2.43.0'
end

group :production do
  gem 'pg', '0.18.4'
end

gem 'rake', '< 11.0'
