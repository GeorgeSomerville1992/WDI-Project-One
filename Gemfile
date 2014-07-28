source 'https://rubygems.org'

gem 'rails', '3.2.17'
gem 'pg'


group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'jquery-rails'
end 
group :production do
  gem 'rails_12factor'
end


group :development, :test do
  gem 'pry-rails'
  gem 'pry-debugger'
  gem 'pry-stack_explorer'
  gem 'annotate'
  gem 'quiet_assets'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'rspec-rails'
end

gem 'carrierwave', "0.9.0"
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'cancan'

group :development do
  gem 'better_errors' # BetterErrors.editor = :sublime if defined? BetterErrors  (initializer)
                      # http://localhost:3000/__better_errors (reports last exception for debugging)
end
gem 'date_validator'