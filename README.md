# Minecraft Management Scripts

A set of shell scripts which perform backup, restart and settings updates for a Linux Minecraft server.

## Prerequisites

* Linux Machine
* Powershell 6+
* Minecraft Server
* Supervisor

## Overview

The `server.properties` determines the launch settings for a given Minecraft server. Most of these properties will remain the same for the context of a specific server. I would however, like to change the `motd`, `difficulty` and `enableMonsters` properties on any given day.

The scripts contained within this repository support setting up cron jobs or ad-hoc commands to update these settings. It is important to note, I have had issues updating these settings whilst the server is running, therefore the changes typically occur the following day.
