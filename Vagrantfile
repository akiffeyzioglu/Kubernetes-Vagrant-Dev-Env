VAGRANT_IP = "15.15.15.4"

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.provision "docker"
  config.vm.network :private_network, ip: VAGRANT_IP
  
  config.vm.provision "ansible_local" do |ansible|
    ansible.install = true
    ansible.playbook = "playbook.yaml"

  config.vm.provider "virtualbox" do |vm|
    vm.memory = "2048"
    vm.cpus = 4
  end
  end
end