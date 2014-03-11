# Define stage for settings (Capistrano assumes this but better safe than sorry)
set :stage, :production
set :branch, 'master'

# Simple Role Syntax
# ==================
# role :app, %w{ubuntu@54.186.89.3}
# role :web, %w{ubuntu@54.186.89.3}
# role :db,  %w{deploy@example.com}

# Extended Server Syntax (with SSH Options)
# ======================
# settings per server override global ssh_options
server '54.186.89.3', user: 'ubuntu', roles: %w{web app}

# Define deploy_to directory on server 
# ==================
# example shows :application and :stage vars but "/var/www/cap-demo/development" works too
set :deploy_to, "/var/www/#{fetch(:application)}/#{fetch(:stage)}"