 lynda.com
 
 RubyonRails 3 Essential Training
 
 Source code
 
 http://www.lynda.com/Ruby-on-Rails-3-tutorials/essential-training/55960-2.html
 
 While I am following this awesome tutorial, I am typing this code out.
 
 I think the instructor is using a different verion of rails from the one I am using.
 
 So I list my development environment here.
 
 My OS:
 
 Mac OS X 10.8.3 (primary)
 
 Windows 8 (when my mac is not around)
 
 My ruby (on mac):
 
 ruby --version
 
 ruby 1.8.7 (2012-02-08 patchlevel 358) [universal-darwin12.0]
 
 My gem (on mac):
 
 gem --version
 
 2.0.3
 
 My rails (on mac):
 
 rails --version
 
 Rails 3.2.13
 
 # Install Rials on Linux (CentOS), possible compatibility issues
 sudo yum install -y ruby
 sudo yum install -y ruby-devel ruby-docs ruby-ri ruby-rdoc
 sudo yum install -y rubygems
 sudo gem update -v
 sudo gem install rails -V
 
 # Install Ruby, Gem, Rials with RVM

 # Setup centos
 yum grouplist | grep Devel
	Additional Development
	Desktop Platform Development
	Development tools
	Server Platform Development
 rpm -q centos-release
	centos-release-6-2.el6.centos.7.x86_64
 cat /etc/redhat-release 
	CentOS release 6.2 (Final)
	
 sudo yum groupinstall -y "Additional Development" "Desktop Platform Development" "Development tools" "Server Platform Development"
 
 yum list installed | grep "gcc-c++"
 yum list installed | grep "zlib"
 yum list installed | grep "openssl"
 
 # Install Ruby from source code
 
 cd /usr/local/src
 sudo wget http://pyyaml.org/download/libyaml/yaml-0.1.4.tar.gz
 sudo tar xzvf yaml-0.1.4.tar.gz
 cd yaml-0.1.4
 su
 ./configure --prefix=/usr/local
 make
 make install
  
 sudo wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p327.tar.gz
 sudo tar xzvf ruby-1.9.3-p327.tar.gz
 cd ruby-1.9.3-p327
 su
 ./configure --prefix=/usr/local --enable-shared --with-opt-dir=/usr/local/lib
 #make -k > build.log 2>&1
 make
 make install
 exit
 
 sudo gem update --system -V
 sudo gem install rails -V

 
 
 