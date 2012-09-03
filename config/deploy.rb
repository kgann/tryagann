require 'bundler/capistrano'
require 'rvm/capistrano'

set :application, "tryagann"
set :repository,  "git@github.com:kgann/tryagann"

set :scm, :git
set :user, "kgann"
set :use_sudo, false
set :copy_cache, "#{ENV['HOME']}/deploy/#{application}"
set :copy_exclude, ['.git']
set :deploy_to, "/var/www/#{application}"
set :deploy_via, :copy

role :web, "199.19.118.222", :primary => true
role :app, "199.19.118.222"

after "deploy:restart", "deploy:cleanup"

namespace :deploy do
  task :start do; end
  task :stop do; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end