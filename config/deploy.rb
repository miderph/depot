set :application, "depot"
role :app, "192.168.1.109"
role :web, "192.168.1.109"
role :db,  "192.168.1.109", :primary => true

set :user, "miderph"
set :password,"carrier"
set :deploy_to, "/var/www/apps/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false

set :scm, "git"
set :repository, "git://github.com/miderph/depot.git"
set :branch, "master"

task :chmod ,:roles=>:web do
  run "chmod -fR 755 #{deploy_to}/current/script/*"
end

after "deploy:symlink",:chmod

#default_environment["PATH"] ="/usr/local/ruby/bin:/usr/local/imageMagick/bin:/usr/lib/jvm/java-6-sun-1.6.0.14/bin:/usr/lib/jvm/java-6-sun-1.6.0.14/jre/bin:/usr/local/ruby/bin:/usr/local/ruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
