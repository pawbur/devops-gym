# Development environment

New company - new life. You were given handcrafted Python app which increments Redis key. Preparing development environment generates some enormous number of issues for too many devs and you decided to automate the process. Save time and learn maybe how to play sitar.

## Steps

0. VM - you don't want to fight with OSX or Windows. Production server is Ubuntu 14.04 and devs must use Ubuntu. Pick Vagrant for creating virtual machine.
1. Docker - app turns out to be microservice using Redis-as-a-Service. Use Docker to immitate external service usage. Remember to pack your app in Docker container too. Use AUFS for storage driver.
2. VM provisioning - use Ansible to install necessary stuff, add vagrant user to docker group etc.
3. One-click - make the setup effortless.

## Things to think about

0. If Redis server isn't present - the app responds with Internal Server Error code. Should you avoid 500? Why? And if so, what can you do to avoid 500?
1. If Redis container stops - the result disappears. Can you add pesistency to Redis container?
2. Is it good practice to remove pyc files while developing? Why?
3. Is it good practice to cleanup stopped Docker containers? Why?
4. Have you tried using devicemapper for Docker storage driver? How does it differ from AUFS?
5. Where does Docker stores container files? Do you know how to change this directory?

## Requirements

### Host

* Vagrant >= 1.7.2
* Ansible >= 1.9.2

### Guest

* Ubuntu 14.04
* Docker >= 1.9.1
