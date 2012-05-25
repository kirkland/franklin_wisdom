set :application, "franklin_wisdom"
  # TODO: Iterate over this in a job that is passed a list of emails.
set :repository,  "git://github.com/kirkland/franklin_wisdom.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "robmk.com"                          # Your HTTP server, Apache/etc
role :app, "robmk.com"                          # This may be the same as your `Web` server
role :db,  "robmk.com", :primary => true        # This is where Rails migrations will run
role :db,  "robmk.com"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
