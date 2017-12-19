#!/bin/bash

apt-get update
apt-get upgrade

## ALLOW SSH CONNECTIONS ##
apt-get -y install openssh-server

## RESTART SSH ##
systemctl restart ssh

## INSTALL XFCE4 ##
apt-get -y install xfce4

## INSTALL GIT ##
apt-get -y install git

## INSTALL GNOME-DISK-UTILITY for creating system images ##
apt-get -y install gnome-disk-utility