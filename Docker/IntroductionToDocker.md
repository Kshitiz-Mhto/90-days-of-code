<div align="center">
    <a href="#"><img align="center" src="./assets/dockerlogo.png" height="300"></a>
</div>
<br/>

```
Docker is a Containerization tool for developing, shippiing, and running applications. It enables separation of applications from infrastructure so that software can be quickly delivered and reduces the delay between writing code and running it in production.
```

## Containerization 

```
Containerization is the packaging together of software code with all it’s necessary components like libraries, frameworks, and other dependencies so that they are isolated in their own "container" aka isolated environment.
Containerization technology tools like Docker, Containerd, and so on.
Software containers are a form of OS virtualization where the running container includes just the minimum operating system resources, memory and services required to run an application or service.
```

## Docker objects
- Images
- Containers
- Volumes
- Network
- plugins 
and so on

*Docker Imgaes*

```
Images also can be called Classes, a kind of blueprint or templates for where creation of container happens. Every images itself based upon another images. Like Every class inheritates Object class in JAVA
```

*Docker Image Creation*
- Using `docker commit <existing container> <Name for new image>`

> Here, docker basically clone the existing container and all the changes made to the container and then create a new image out of it. 

![alt docker commit](./assets/commit.png)

- Using custom Dockerfile

*COMMAND*

` docker build -t <image name> <location of the folder where the Dockerfile exist along with the project you want to containerize>`

![alt Dockerfile](./assets/pyDockerfile.png)

*Docker Containers*

```
Containers are runnable instances of an image. By default, they are relatively well isolated from other containers and its docker host. 
Container is an isolated method of packaging application code, all its dependencies, libraries, frameworks into a single deployment unit.
we can control how isolated a container’s network, storage, or other underlying subsystems are from other containers or from the host machine.
Containers are defined bu its image as well as any configuration option we provide to it during the container creation or initiation.
```

## Docker Architecture [[simplified](https://iximiuz.com/en/posts/implementing-container-runtime-shim/)]

<div align="center">
    <a href="#"><img align="center" src="./assets/layeredDockerArchitecture.png" height="400"></a>
</div>
<br/>

>For every program to run, First we need an Operating system a kind of base. Every program is a bunch of code or instruction. Each program when executed then treated as process. The process is running on the RAM. All the processes are running on top of Operating System.

> Provisioning ---> Installing then booting the Os process. It can be acheived using 4 ways:

|Bare Metal |Cloud computing |Virtualization |Docker|
|:---:|:---:|:---:|:---:|
|![alt](./assets/baremetal.png)|![alt](./assets/cc.png)|![alt](./assets/vm.png)|![alt](./assets/dockerarche.png)|
|Operating System |Instances |Virtual Machine| Container|

## Why Docker is so fast? 
>

<br>

**Lets Make hand dirty with docker**

*staring the docker engine on top of OS*

```
systemctl enable docker -> enabling the docker service
systemctl start docker -> to start docker engine
```

> if you are using snap 

```
sudo snap start docker
```

> Checking stats of docker engine

```
systemctl status docker.service
systemctl status snap.docker.dockerd.service
```

<div align="center">
    <a href="#"><img align="center" src="./assets/status.png" height="400"></a>
</div>

<br/>

## Lets play with docker CLI and launching the containers

*when we execute `docker run <images>`*

```
Docker configure, install , boot and login the Operating System within a second.
```

*Trick*

> Ctrl + p + q ------> Get out of the container without closing it.

![alt command](./assets/command1.png)

> Also we can execute the particular process and exit the container but don't delete the container.

*COMMAND* 
`docker run <image id> <command>`  
> container run in background and execute the command with no terminal and no interactive medium and exits immediately.
> used with non interactive commands like date, ping

`docker run -it <image>`
> container run with provided terminal to interact with the contianer

`docker run -dit <image>`
> container run in detached mode or in background with out giving a interactive terminal at initial.

![alt detach flag](./assets/detach.png)


`docker run --rm ubuntu <command>`

 --> enter the os execute the command and exit the container also delete the container 

![alt command](./assets/entryAndexit.png)

> Removing the images and containers

![alt command](./assets/pruneAndremove.png)

<br>

## Lets play with information 

*COMMAND*

- `docker info`

<div align="center">
    <a href="#"><img align="left" src="./assets/info0.png" height="400"></a>
</div>

<br/>

<div align="center">
    <a href="#"><img algin="left" src="./assets/info1.png" height="400"></a>
</div>
<br/>

- `docker contianer inspect --format "" <container name>` 

--> act like print statement

- `docker contianer inspect --format "{{ <path to variable to access }}" <container name>`

![alt docker inspect](./assets/inspect0.png)
![alt docker inspect](./assets/inspect1.png)
![alt docker inspect](./assets/inspect2.png)
![alt docker inspect](./assets/inpsect.png)

## Sharing the images [Export and Import]

- Docker registry

**Workflow**

<!-- ![alt workflow](./assets/pushpull.png) -->
<div align="center">
    <a href="#"><img src="./assets/pushpull.png" height="400"></a>
</div>

<br>

*COMMAND*
`docker push <image name>` --> `image name` syntax --> `docker_user_id/image_name`

then, 

`docker pull <image name>`

- Docker `save` and `load`

**Workflow**

<div align="center">
    <a href="#"><img src="./assets/saveAndload.jpg" height="400"></a>
</div>

*COMMAND*

`docker save <docker image> <custom name for your file>` 

then, transfer the file to another system.

`docker load -i <path to that file> `

<br>

## Lets play with some details behind docker containers

> we can monitor the running container using some commands

*COMMAND*

`docker logs <container id>`
![alt logs](./assets/log1.png)
![alt logs](./assets/log3.png)

> For live monitoring we can use fetch (-f) as flag

*COMMAND*

`docker logs -f <container id>`
![alt logs](./assets/rundock.png)
![alt logs](./assets/logs-f.png)

## lets connect with the running container

*COMMAND*

`docker attach <container id>`
> It let inside the container 
> It increase the human intervention so not prefer this command
> With Ctrl + d --> stops the running container

or,

`docker exec -it <container id> <command>`
> It basically execute the command inside the selected container and return back.
> Help in automating and scripting

`docker exec -it <container id> bash`
> With Ctrl + d --> exits the bash, don't stop the running contianer

![alt rouch](./assets/touchContainer.png)

<br>

## Networking Stuff

> Before jumping into Docker network architecture.

### <u>*Default Gateway*</u>

![alt default gateway](./assets/defaultrouter.png)

```
Think of a default gateway as an intermediate device between the local network and the internet. The default gateway transfers internal data to the internet and back again.
In most homes and small offices, the default gateway is a router that directs traffic from the local network to the cable or DSL modem, which sends it to the internet service provider (ISP).
```

![alt gateway](./assets/route.png)

### <u>*Subnet Mask*</U>

![alt subnet mask](./assets/subnetting.jpg)

```
When a bigger network is divided into smaller networks, to maintain security, then that is known as Subnetting.
Each network is considered as subnets.
A subnet mask reveals how many bits in the IP address are used for the network by masking the network portion of the IP address.
```
![alt subnetting in action](./assets/subnettingaction.png)

![alt subnet mask](./assets/gate.png)

![alt subnet mask](./assets/gateway.png)

<br>

## Docker Networking begins!!

> Virtual Lab using Containers and docker network.
![alt docker lab](./assets/dockerlab.png)

*COMMAND*

`docker network ls`

> preconfigured drivers and detail can be show using following command.

> *bridge* is the default network so whenever we launch the containers all the container reside in the *bridge* network *by default*.

`docker config`

`docker network inspect <network driver>`
![alt driver inspectionx](./assets/networkdrivers.png)

> Here, IP Adress Manager (IPAM) basically a Database that store network names, driver detail, ip addresses, and so on. Inside this, we have DHCP, DNS ..

![alt lab Architecture](./assets/dockelabarchitecture.png)

> As we know `switch` and `router`are physical device but we can recreatet these device in software form using some software or tools then they are considered as bridge.
> So Bridge a kind of working as switch and also router in the network.

<br>

### <u>*Creating own network*</U>

*COMMAND*

`docker network create <network name>`

> along with selection of available driver

`docker network create <network name> --driver=<driver name>`

![alt network creation](./assets/networkcreation.png)

> We specify inwhich network to launch our containers

*COMMAND*

`docker run -dit --name <custom name> --network <network name>  <image>`

![alt multicontainers in a network](./assets/twocontainerinnetwork.png)

> if the multiple containers in custom network, DNS resovling aka linking  is provided whereas not in default network.
 
 ![alt communicating with containers within a network ](./assets/communicationwithinnetwork.png)

 ![alt communicating within default network](./assets/pinging.png)

> we can launch container in None network for max. security and some testing stuff. The None network is absolutly isolated.

*RECOMMANDED*

`docker run -dit --name <custom name> --network-alias <custom name> --network <network name>  <image>`

> Alias are given to container for easy classificatio and identifying of which network group they belong
 
### Connection with Contianers and Networks.

> Disconneting the container from network and connecting to another network.

> Highly used while testing.

`docker network disconnect <container id> <network name>`

![alt connect and disconnect](./assets/connectdisconnet.png)

`for [os] container`

![alt connected](./assets/connect.png)
![alt connected](./assets/disconnectos.png)
![alt connected](./assets/thenconnect.png)
