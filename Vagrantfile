Vagrant.configure("2") do |config|
  config.vm.define "database" do |database|
    database.vm.box = "ubuntu/bionic64"
    database.vm.network "private_network", ip: "192.168.10.150"
    database.vm.box_download_insecure = true
    database.vm.synced_folder "environment", "/home/vagrant/environment"
    #
    database.vm.provision "shell", path: "environment/provision.sh", privileged: false
    #
  end
  config.vm.define "app" do |app|
    app.vm.box = "ubuntu/bionic64"
    app.vm.network "private_network", ip: "192.168.10.100"
    app.vm.box_download_insecure = true
    app.vm.synced_folder "app", "/home/vagrant/app"
    app.vm.provision "shell", path: "provision.sh", privileged: false
  end
end