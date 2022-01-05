<!-- TITLE -->
<br />
<div align="center">
  <img src="logo.png" alt="Logo" width="80" height="80">
  <h1 align="center">Bgp At Doors of Autonomous Systems is Simple</h3>
  <p align="center">
    Basics of network administration.
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>


This project is also a dependeny of Inception Of Things - part3. V1 and V2 are specials used by Inception-Of-Things. They aimed at being deployed by ArgoCD.

### Resources
![gns3](https://www.gns3.com/software)

### Getting Started

#### Installation

```=shell
sudo add-apt-repository ppa:gns3/ppa
sudo apt update
sudo apt install gns3-gui gns3-server
```

```=shell
sudo apt remove docker docker-engine docker.io
sudo apt-get install apt-transport-https ca-certificates curl \ software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce
ubridge libvirt kvm wireshark docker
```
