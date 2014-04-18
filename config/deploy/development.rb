server '192.168.2.10', user: fetch(:deploy_user), roles: %w{web app db}, primary: true

set :stage,     :development
set :rails_env, :development  # Always set environment explicitly!
set :branch,    'master'

set :full_app_name, "#{fetch(:application)}_#{fetch(:stage)}"

set :deploy_to,     "/home/#{fetch(:deploy_user)}/apps/#{fetch(:full_app_name)}"

set :development_vagrant, true

# Nginx
set :enable_ssl, true
set :nginx_server_name, '*.tippfuchs.dev tippfuchs.dev'
set :nginx_enable_spdy, false

# Unicorn (+ Monit)
set :unicorn_worker_count, 1

# Database
set :postgresql_user,     "#{fetch(:application)}_#{fetch(:stage)}"
set :postgresql_database, "#{fetch(:application)}_#{fetch(:stage)}"
set :postgresql_password, "#{fetch(:application)}_#{fetch(:stage)}" # TODO: properly ask for password