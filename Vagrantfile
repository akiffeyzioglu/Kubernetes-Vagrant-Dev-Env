Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.provision "docker"

  config.vm.network "forwarded_port",
      guest: 3000,
      host: 3000,
      auto_correct: true
  
  config.vm.synced_folder "public/", "/vagrant/public"

  config.vm.provision "ansible" do |ansible|
    ansible.limit = "all"
    ansible.playbook = "playbook.yaml"

  config.vm.provider "virtualbox" do |vm|
    vm.memory = "4096"
    vm.cpus = 4
  end
  end
end