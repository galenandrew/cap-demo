# Define stage for settings (Capistrano assumes this but better safe than sorry)
set :stage, :production
set :branch, 'master'

# Simple Role Syntax
# ==================
# role :app, %w{ubuntu@myapp.com}
# role :web, %w{ubuntu@myapp.com}
# role :db,  %w{ubuntu@myapp.com}

# Extended Server Syntax (with SSH Options)
# ======================
# settings per server override global ssh_options
server 'myapp.com',
	user: 'ubuntu',
	roles: %w{web app db}

# Define deploy_to directory on server 
# ==================
# example shows :application and :stage vars but "/var/www/cap-demo/development" works too
set :deploy_to, "/var/www/#{fetch(:application)}/#{fetch(:stage)}"