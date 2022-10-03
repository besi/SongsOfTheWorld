# config valid for current version and patch releases of Capistrano
lock "~> 3.17.1"

set :application, "SongsOfTheWorld"
set :repo_url, "https://github.com/besi/SongsOfTheWorld.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
set :branch, :main

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", 'config/master.key'
# scp .env.production songsoftheworld@dev.b-labs.ch:/home/songsoftheworld/rails/shared/.env
# scp config/master.key songsoftheworld@dev.b-labs.ch:/home/songsoftheworld/rails/shared/config/
# scp config/database.prod.yml songsoftheworld@dev.b-labs.ch:/home/songsoftheworld/rails/shared/config/database.yml
append :linked_files,  '.env', 'config/database.yml', 'config/master.key'

# Default value for linked_dirs is []
append :linked_dirs, "node_modules", "log", "tmp/pids", "tmp/cache", "tmp/sockets", "tmp/webpacker", "public/system", "vendor", "storage", ".bundle"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

# RBENV gem
set :rbenv_prefix, '/usr/bin/rbenv exec'
