### Installer Jruby / RVM

 1. Install AdoptOpenJDK11 ( if you don't already have a compatible java version on your machine )

	 `brew tap AdoptOpenJDK/openjdk && brew cask install adoptopenjdk11`
   
 2. Install RVM
	 
	 `gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \curl -sSL https://get.rvm.io | bash -s stable --auto-dotfiles`
	 
 3.  Install JRuby
	 
	 `rvm install jruby-9.2.7.0` (or newest version. See `Gemfile` to see which version to install)
	 
		Sur OSX, si problème de certificats SSL (symptômes : url shortener de google ne fonctionnant pas), réinstaller ruby en forçant sa compilation (flag `--disable-binary`)
	see : https://github.com/rvm/rvm/issues/3923
 4. Use your jruby version with RVM
	   
	   `rvm use jruby-9.2.7.0` (or newest version. See `Gemfile` to see which version to install)
	   
 5.  Prepare your bundle setup
	 
	JARS_LOCK=skip gem update --system
	JARS_LOCK=skip gem install bundler jar-dependencies ruby-maven # install the `lock_jars` command
	JARS_LOCK=skip bundle # install Ruby dependencies. See `Gemfile`
	 
 6. Make sure that `rspec` tests pass and `rails s` works fine.
 
### DB initialization

Make sure to run `rake db:create db:migrate` once if you have to use the database.
