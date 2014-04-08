server '192.168.2.10', user: fetch(:deploy_user), roles: %w{web app db}, primary: true

set :stage,     :staging
set :rails_env, :production
set :branch,    'master'

# Allows to deploy multiple versions of the same app side by side.
# Also provides quick sanity checks when looking at filepaths.
set :full_app_name, "#{fetch(:application)}_#{fetch(:stage)}"

# Nginx
set :enable_ssl, true
set :nginx_server_name, 'tippfuchs.de tippfuchs.com bet-fox.com'
set :nginx_enable_spdy, true

# Unicorn (+ Monit)
set :unicorn_worker_count, 2