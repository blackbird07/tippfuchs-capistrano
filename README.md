Tippfuchs Capistrano
====================

Tippfuchs Capistrano is a template for capistrano deployment used for Tippfuchs.de. It offers:

  - Postgresql tasks for setting up the app's database user and database
  - Configuration files that are environment-aware (use different configurations in production and development)
  - Production-ready and secure Nginx vhost files
  - Nginx maintenance page
  - and much more

How to Use
----------

```
git clone https://github.com/emrass/tippfuchs-capistrano.git
```

Then copy the files into your rails root and adjust the variables if required.
*Make sure to adjust the server IP address in config/production.rb before
deploying!*

```
set :application, 'tippfuchs'
set :deploy_user, 'deployer'
set :repo_url,    'git@github.com:emrass/tippfuchs-sandbox.git'
```

When you are finished setting up the variables, run the following commands in order:
```
bundle exec cap <stage> deploy:setup_config

# for development, cap deploy is not required -> just setup DB
bundle exec cap <development> postgresql:setup

# otherwise, simply run, this will also setup the DB
bundle exec cap <stage> deploy
```

Author
------

[Enrico Mraß]


[enrico mraß]:mailto:enrico.mrass@gmail.com