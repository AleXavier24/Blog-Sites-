## Local PentestLab Management Script

Bash script to manage web apps using docker and hosts aliases.  
Made for Kali linux, but should work fine with pretty much any linux distro.

### Current available webapps

* bWAPP
* WebGoat 7.1
* WebGoat 8.0
* Damn Vulnerable Web App
* Mutillidae II
* OWASP Juice Shop

### Get started 

Clone repo and use the pentestlab.sh script as described below  
```
git clone https://github.com/eystsen/pentestlab.git
cd pentestlab

# If you have not installed docker on your x64 Kali system
# you can run this script (tested as of Jul 2018)
# Note: I always add a regular user and login with it 
#       before actually using kali, so sudo is added in all scripts
./install_docker_kali_x64.sh

# Then run
./pentestlab.sh start bwapp
# ... to download bwapp docker image and map it onto localhost at http://bwapp

# Print a complete list of available projects use the list command
./pentestlab.sh list 

# Running just the script will print help info
./pentestlabs.sh 
```


### Usage
```
Usage: ./pentestlab.sh {list|status|info|start|stop} [projectname]

 This scripts uses docker and hosts alias to make web apps available on localhost"

Ex.
./pentestlab.sh list
   List all available projects  
   
./pentestlab.sh status
   Show status for all projects  
   
./pentestlab.sh start bwapp
   Start docker container with bwapp and make it available on localhost  

./pentestlab.sh stop bwapp
   Stop docker container

./pentestlab.sh info bwapp
   Show information about bwapp project
```

 ### Dockerfiles from
 DVWA     		- Ryan Dewhurst (vulnerables/web-dvwa)  
 Mutillidae II		- Nikolay Golub (citizenstig/nowasp)  
 bWapp     		- Rory McCune (raesene/bwapp)  
 Webgoat(s)		- OWASP Project  
 Juice Shop     	- Bjoern Kimminich (bkimminich/juice-shop)
