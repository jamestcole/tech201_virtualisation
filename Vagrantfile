
Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.10.100"
  config.vm.box_download_insecure = true

  config.vm.synced_folder "app", "/home/vagrant/"
 
end
