# Kubernetes & Vagrant Local Development Environment

Note: We have Python module install problem in Vagrant VM. It will be fixed in the coming days.

## Requirements

* [Git](https://git-scm.com/downloads)

* [Vagrant](https://www.vagrantup.com/downloads)

* [VirtualBox](https://www.virtualbox.org/wiki/VirtualBox)

## How to use this environment

1. Clone this repo. 
```
   git clone https://github.com/akiffeyzioglu/Kubernetes-Vagrant-Dev-Env.git
```
2. cd into it. 
```
  cd Kubernetes-Vagrant-Dev-Env
```
3. Start Vagrant.
```
   vagrant up --provision
```
4.  SSH into machine.
```
   vagrant ssh
```
5. Start Skaffold
```
    skaffold dev
```
6. Go to browser and type "15.15.15.4", see result.

7. Logout machine.
```
   logout
```
8. Destroy machine.
```
   vagrant destroy
```