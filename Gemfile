source "https://rubygems.org"

# Specify your gem's dependencies in rubanok.gemspec
gemspec

gem "pry-byebug", platform: :mri
gem "simplecov"

local_gemfile = 'Gemfile.local'

if File.exist?(local_gemfile)
  eval(File.read(local_gemfile)) # rubocop:disable Security/Eval
end

gem 'sorbet', :group => :development
gem 'sorbet-runtime'
gem 'sorbet-rails'
gem 'redis' # for sorbet and cache_store
gem 'dalli' # for sorbet and cache_store
gem 'rails', :group => :development # for sorbet
