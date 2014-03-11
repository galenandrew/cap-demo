# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'cap-demo'
set :repo_url, 'git@github.com:galenandrew/cap-demo.git'

# Default value for :scm is :git
set :scm, :git

# Default value for keep_releases is 5
set :keep_releases, 3

# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Global SSH Options (shared across all stages)
# ==================
set :ssh_options, {
	keys: %w(~/.ssh/pem/galenandrew.pem),
	forward_agent: false,
	auth_methods: %w(publickey),
	port: 22
}