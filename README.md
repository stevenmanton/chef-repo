This repo contains code that I've been using to teach my Chef will the ultimate goal of quickly provisioning analytics nodes. As such, I'm focusing on the analytics tools that I normally use (Python, Git, databases, etc.) I started by using chef-solo, but I'm migrating to using the Chef Enterprise hosted by OpsCode. I hope this code is useful to anyone who stumbles upon this page. Feel free to contact me with any questions/suggestions/tips. Thanks!

To get this code up and running, you need:
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](http://www.vagrantup.com/downloads.html)
* [Chef](http://www.getchef.com/chef/install/)

You will also need two plugins for Vagrant:
* [vagrant-omnibus](https://github.com/schisamo/vagrant-omnibus)

        vagrant plugin install vagrant-omnibus

* [vagrant-berkshelf](https://github.com/berkshelf/vagrant-berkshelf)

        gem install berkshelf
        vagrant plugin install vagrant-berkshelf
