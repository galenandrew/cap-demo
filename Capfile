# Load DSL and Setup Up Stages
require 'capistrano/setup'

# Includes default deployment tasks
require 'capistrano/deploy'

# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.cap').each { |r| import r }

# Enable Mac OS X 10.9 notifications...Awesome! (https://github.com/capistrano/notification-center)
# require 'capistrano-nc/nc'