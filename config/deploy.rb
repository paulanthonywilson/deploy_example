set :application, "songsapp"

set :scm, :git
set :branch, "master" 
set :git_enable_submodules, true
set :deploy_via, :copy

set :repository,  "git@github.com:paulanthonywilson/deploy_example.git"

set :user, "paul"
set :use_sudo, false
set :deploy_to, "/var/www/apps/#{application}"

role :app, "edgesongs.com"
role :web, "edgesongs.com"
role :db,  "edgesongs.com", :primary => true

namespace :deploy do
  desc "Restarting passenger with restart.txt"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end

  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with passenger"
    task t, :roles => :app do ; end
  end
  
end

after "deploy:update_code" do
  run "ln -sf #{shared_path}/database.yml #{release_path}/config/database.yml"
end

