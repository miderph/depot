# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
#RAILS_GEM_VERSION = '2.3.3' unless defined? RAILS_GEM_VERSION

RAILS_GEM_VERSION = '2.3.4'

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')


#RAILS_ENV = ENV['RAILS_ENV'] || 'production'

Rails::Initializer.run do |config|
  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration should go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded.
  
  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )
  
  # Specify gems that this application depends on and have them installed with rake gems:install
  # config.gem "bj"
  # config.gem "hpricot", :version => '0.6', :source => "http://code.whytheluckystiff.net"
  # config.gem "sqlite3-ruby", :lib => "sqlite3"
  # config.gem "aws-s3", :lib => "aws/s3"

  # Only load the plugins named here, in the order given (default is alphabetical).
  # :all can be used as a placeholder for all plugins not explicitly named
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]
  
  # Skip frameworks you're not going to use. To use Rails without a database,
  # you must remove the Active Record framework.
  # config.frameworks -= [ :active_record, :active_resource, :action_mailer ]
  
  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer
  
  # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
  # Run "rake -D time" for a list of tasks for finding time zone names.
  # config.time_zone = 'UTC'
  config.time_zone = 'Beijing'
  
  # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de
  #config.i18n.default_locale = "zh_CN"
  
  #config.log_level = :debug
  
  config.gem "paperclip"
  config.gem "calendar_date_select"
  config.action_mailer.raise_delivery_errors=true
  config.action_mailer.delivery_method=:smtp
  config.action_mailer.smtp_settings={
  :enable_starttls_auto => true,
  :address => 'smtp.gmail.com',
  :port => 587,
  :domain => "localhost",
  :authentication => :plain, 
  :user_name => "miderph.yan@gmail.com",
  :password => "carrier84"}
end

require 'will_paginate' 
#
#CalendarDateSelect::FORMATS[:my_custom] = {
#  # Here's the code to pass to Date#strftime
#  :date => "%Y-%m-%d",
#  :time => " %I:%M %p",  # notice the space before time.  If you want date and time to be seperated with a space, put the leading space here.
#  :javascript_include => "format_my_custom"
#}
#
#
#CalendarDateSelect.format = :iso_date

#RAILS_DEFAULT_LOGGER = Logger.new("#{RAILS_ROOT}/log/#{RAILS_ENV}.log","daily")  

#ActionMailer::Base.default_content_type = "text/html"#其中type可以是"text/plain", "text/html", 和 "text/enriched"."text/plain"是默认
