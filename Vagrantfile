# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "raring"
  config.vm.box_url = "http://cloud-images.ubuntu.com/raring/current/raring-server-cloudimg-vagrant-amd64-disk1.box"
  config.vm.network :forwarded_port, guest: 4243, host: 4243, host_ip: "127.0.0.1"
  (49000..49900).each do |port|
    config.vm.network :forwarded_port, :host => port, :guest => port, host_ip: "127.0.0.1"
  end
  config.vm.provision :shell, :path => "bootstrap.sh"
end
