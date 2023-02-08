# tech201_virtualisation
tech201_virtualisation

## Devops

- Devolop automation deployment pipeline
- continuous release cycles
- automated testing
- break silos between developers and operators

## Infrastructure and architecture
infrastructure and architecture is necessary for the physical components of the cload.

### Cloud DataCenters

- Physical computers act as servers for the public, large scale datacenters.
- Large scale of these facilities economises on cost, economies of scale achieved.
- Datacenter responsible for security, cooling infrastructur, carbon ofset, disposal of old hardware.
- High security for the datacenters ensure that customers data is safe.

### Ease of use
other teams ae going to use he tools we create. Theywont use them if they are not user freindly.

If the devs do not use our tools , then there will be delays in deployment.

### Flexibiity
Other teams are going to want to use the code. It can be easy to get locked in to using a specific product, tool or software. It then becomes hard for the company to keep up with industry changes.

Everything the company uses should be easily changed or updated as the business needs change.

### Robustness
we need to be as close to 100% uptime as possible for our companies services

we are responsible for achieving this as DevOps engineers.

### Cost
Cost is often overlooked. we need to make sure the company is being as efficient as possible in it's tech dealings

For example how powerful a machine do we need to conduct a task. do we need certain servers running.

## Dev Environments
### what makes a good dev environment
- user freindly fast and robust environment.
- It should be easy to update and change.
- It should match the production environment as closely as possible
- It should be the same for everyone everywhere
- It should support one application

App 1 require version 1.1 - App2 needs version 1.4, App1 needs a program and that program conflicts with the program that App2 needs.

### Installing ruby
- ruby is a high level language
- Download ruby from their website
- run git bash as administrator `ruby --version` to check it is installed

### Installing vagrant 
- use windows features to ensure Windows Hyperviser Platform and Virtual Machine Platform are active
- make sure Hyper-V is not active

### Using vagrant
- navigate to your folder using `cd /c/folder` in gitbash
- use `ls` to give status
- should contain files , readme etc

```vagrant init ubuntu/xenial64```

- your vagrant file should now be with other github files

- this starts the vagrant vm

```vagrant up```

- this will connect to the virtual machine

`vagrant ssh`


- to update vagrant

`vagrant reload`

- shows hidden files and folders

`ls -a`

- sudo (super user)
- apt-get(to get something from internet)
- update (updates the machine)
- -y (used to automate questions)
- sudo apt-get update -y




### while in virtual machine
- to confirm virtual machine has access to the internet

`sudo apt-get install nginx -y`

- cleans the screen

`clear`

- Must start system after downloading it 

`sudo systemctl start nginx`

- check the system is working
`sudo systemct1 status nginx`

- to give virtual machine an IP, in vagrant file below box command

`config.vm.network "private_network", ip:"192.168.10.100"`

- to exit virtual machine

`exit`


### in vagrant system
mores