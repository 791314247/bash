#!/bin/sh
sudo apt-get update
sudo apt list --upgradable
sudo apt-get upgrade
sudo apt-get autoremove
