#!/bin/bash

apt-get install -y \
	virtualbox \
	vagrant 
apt-get install software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install ansible -y
