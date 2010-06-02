set :application, "test_app"
role :app, application
role :web, application
role :db,  application, :primary => true

set :user, "miderph"
set :password,"carrier"
set :deploy_to, "/var/www/apps/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false

set :scm, "git"
set :repository, "git://github.com/ryanb/railscasts.git"
set :branch, "master"

