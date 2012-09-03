require 'bundler/capistrano'
require 'rvm/capistrano'

set :application, "tryagann"
set :repository,  "git@github.com:kgann/tryagann"

set :scm, :git

role :web, "199.19.118.222", :primary => true
role :app, "199.19.118.222"

after "deploy:restart", "deploy:cleanup"

namespace :deploy do
  task :start do; end
  task :stop do; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end