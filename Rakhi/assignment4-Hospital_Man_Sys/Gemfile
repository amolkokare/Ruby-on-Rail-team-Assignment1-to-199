source 'https://rubygems.org'


ruby '2.7.2'  # This is ruby version.

gem 'rails', '~> 6.1.1'   #This is rails version.
gem 'puma', '~> 5.0'  #Puma is a simple, fast, threaded, and highly concurrent
                      # HTTP 1.1 server for Ruby/Rack applications.
gem 'sass-rails', '>= 6' #Sass adapter for the Rails asset pipeline.
gem 'webpacker', '~> 5.0' #Webpacker is the default JavaScript compiler. It
                          #all the JavaScript code will be handled by Webpacke
gem 'turbolinks', '~> 5' # It is intended to speed up navigating
                          #between pages of your application
gem 'jbuilder', '~> 2.7' #generating and rendering JSON responses for API requests in Rails

gem 'bootsnap', '>= 1.4.4', require: false #Bootsnap is a library that plugs into Ruby,
                                        #support for active support and yaml.

group :production do
  gem 'pg', '~> 1.2', '>= 1.2.3'   #database
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw] # helps us fix bugs and debug projects
                                                      #by going through each line
end

group :development do
  gem 'web-console', '>= 4.1.0'  #Web Console is a debugging tool for your Ruby on Rails applications.
  #gem 'rack-mini-profiler', '~> 2.0' #indicator to the top left corner of the page with the total
  #loading time displayed in it. Click on the indicator.

end

group :test do
  gem 'capybara', '>= 3.26' #used on top of an underlying web-based driver
  gem 'selenium-webdriver' #It aims to mimic the behaviour of a real user, and
  #as such interacts with the HTML of the application
  gem 'webdrivers' #WebDriver is a tool for writing automated tests of websites
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
