<div align="center">
    <h1>Ansible</h1>
</div>
<br>

```
Ansible is an open-source configuration management tool owned by RedHat, IT automation engine that automates cloud provisioning, intra-service orchestration, configuration management, application deployment, and many other IT needs.
```
[blog](https://www.interviewbit.com/blog/ansible-architecture/)
[blog1](https://medium.com/@madhukaudantha/ansible-and-ansible-architecture-2f309fe53fa)

*Why Ansible*

- *Free*: Ansible is an open-source tool.
- *Powerful*: Ansible lets you model even highly complex IT workflows.
- *Flexible*: You can orchestrate the entire application environment no matter where it’s deployed.`configuratio/installation/deployment` steps are coded in single yaml file. Further, re-use same file multiple times even in different evn.
- *Agentless*: You don’t need to install any other software or firewall ports on the client systems you want to automate, basically using `ssh` for access to servers. You also don’t have to set up a separate management structure.
- *Efficient*: Because you don’t need to install any extra software, there’s more room for application resources on your server.

*where Anisble*

![alt where it is used is IaC](./assets/useInIAC.png)

<div align="center">
    <h1>Ansible Architecture</h1>
</div>
<br>

![alt architecture](./assets/ansibleArchi.jpeg)

> Let's talk about Modules

```

Basically, modules are small programs that carry out the actual work.Each module has one specific task; install the server, start the server, clean up, copy file and so for each task there are indivisual modules for each task.

```

![alt actual workflow of modules](./assets/modules.png)

> Let's talk about Playbook

> Tasks

```
Since, Modules are granular and specific for complex infrastructure and application, we nedd many modules in cetain sequence, grouped together. Here, comes the Playbook.
```

> First, the sequencnal modules are grouped in `tasks:` as shown
![alt tasks](./assets/playbookTask.png)

> Further we need which server and who is performing this, for that we specify `hosts:` and `remote_user:`

>Furthermore, we can specify a custom variables in playbook as shown 
![alt variable](./assets/varinPlaybook.png)

> `Play` `Book`

![alt play](./assets/play.png)

> Playbook

![alt playbook](./assets/playbook.png)
>Moreover, specifying the name of the playbook what actually the playbook gonna do is good practice.

> Inventory

*List of machine that are going to be involved in task execution*

![alt overview of anisble](./assets/overview.png)

![alt hosts](./assets/hosts.png)
> we can use server url instead for thier IPs using `name` just like declaring custom variables.

***
***

<div align="center">
    <h1>Lets your hands be Dirty!!</h1>
</div>
<br>

> Running docker container using ansible

![alt docker container](./assets/deployingContainer.png)

> Docker ps

![alt docker container](./assets/docker-ps.png)

> Playbook

![alt playbook](./assets/dockerPl.png)

***

> Here,In this demo, i am using docker container as my servers. I cannot afford the AWS EC2 server cause `i am poor` 
[set up docker container for hosts]()
 
*Let's connect our poor server using ssh*

```
sudo apt-get install ssh
sudo systemctl ssh start
sudo systemctl ssh enable
service ssh status
```
![alt ssh](./assets/ssh.png)

> openssh-server is not installed on the `os` container so we couldnot get access using ssh

![alt ssh connet](./assets/sshConnect.png)

*Ansible knows all the server that are listed in anisble-inventory so we can,*

*COMMAND*

> `ansible -i inventory <host-names> -m ping -u root`

*for my setup i can do like this*

> `ansible <container-name> -m ping`
![alt ping with ansible to server](./assets/pingingWithAnsible.png)

*Flags*

> *-i* -> inventory
> *-m* -> module
> *-a* -> argument for module

*if we dont provide module while using only argument then the ansible apply the -m `command`*

> Playing with ad-hoc commands

