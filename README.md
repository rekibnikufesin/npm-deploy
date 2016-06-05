# Using npm scripts to deploy to a Vagrant image

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started](#setup)
    * [Setup requirements](#setup-requirements)
    * [Beginning with npm-scripts](#beginning-with-npm-scripts)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the repo is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the repo](#development)

## Description
One of the biggest stumbling blocks I see when pushing code to production servers is unidentified dependencies: something installed locally on the developer’s workstation that doesn’t exist on the production servers. In this lesson, I’ll show you how to use npm scripts to deploy your node.js application to a newly-provisioned server via Vagrant for validation before going to production. This repo demonstrates how you can use npm scripts to automatically provision and deploy to a local vagrant server to verify your application works and all dependencies are identified.

## Setup
### Setup Requirements
Vagrant must be setup and configured on your local workstation. Details for doing so can be found [here](https://www.vagrantup.com/docs/installation/)

### Beginning with npm-scripts
Download the repo.
Provision and deploy to the vagrant server with `npm run deploy`

## Usage
Once launched, the terminal window will log you into the vagrant server. You can connect to the running node process by typing `screen -r`.
To kill the node process, use `Ctrl + c`. To exit the screen window without killing the nodejs process, use `Ctrl + a Ctrl + d`
To start a new screen session after killing it, type `screen /usr/bin/node /vagrant/server.js`
Add additional packages and features to the vagrant image by modifying the vagrant_init.sh script.
Create additional npm commands (for example deploying to production or staging environments) by adding the new command in `package.json`

## Reference
`Vagrantfile` is the configuration file looked for by vagrant when launching an instance. Modify it to suit your needs and environment. For example:
* deploy to a different operating system by changing the [box](https://atlas.hashicorp.com/boxes/search)
* change the memory, network and other settings on the vagrant server [reference](https://www.vagrantup.com/docs/vagrantfile/machine_settings.html)
* integrate with your existing provisioning provider (puppet, ansible, chef, etc...) using configuration info found [here](https://www.vagrantup.com/docs/provisioning/)

## Limitations
Requires that [vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/wiki/Downloads) are configured for your workstation. Both are free and available for every major Operating System.

## Development
Contributions are welcome. This repo is intended to be a starting point for you to learn how to integrate provisioning via npm scripts into your environment. If you feel something is broken or additional features/documentation are required, contact [me](https://github.com/rekibnikufesin) or submit a pull request!