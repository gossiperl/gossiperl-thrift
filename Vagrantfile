Vagrant.configure("2") do |config|

  config.vm.define "thrift" do |machine|
    machine.vm.provision :shell, :inline => "chmod +x /vagrant/bin/install-thrift.sh"
    machine.vm.provision :shell, :inline => "/vagrant/bin/install-thrift.sh"
    machine.vm.provision :shell, :inline => "chmod +x /vagrant/bin/generate-thrift.sh"
    machine.vm.provision :shell, :inline => "/vagrant/bin/generate-thrift.sh"
    machine.vm.box = "precise64"
    machine.vm.box_url = "http://files.vagrantup.com/precise64.box"
    machine.vm.provider "virtualbox" do |vbox|
      vbox.customize ["modifyvm", :id, "--memory", "2048"]
    end
  end

end