# Before starting

## Requisites

This tutorial requires:
* Linux, `curl`, `make` and Docker installed in your machine
* Internet connection
* Some knowledge about microservices and programming
* Basic knowledge about what is Kubernetes

## Cloning the repository
You can use `git` to clone this repository from `https://github.com/iblancasa/observability-workshop.git`:
```sh
$ git clone https://github.com/iblancasa/observability-workshop.git
Cloning into 'observability-workshop'...
remote: Enumerating objects: 4, done.
remote: Counting objects: 100% (4/4), done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (4/4), 4.53 KiB | 4.53 MiB/s, done.
```

If you don't want to clone the repository but only get the source code, you can download it with `curl` and extract it with `unzip`:
```sh
$ curl -sSLo observability-workshop.zip https://github.com/iblancasa/observability-workshop/archive/refs/heads/main.zip
$ unzip observability-workshop.zip
Archive:  observability-workshop.zip
34daed31e07f12d8741cdf46d06524e258960902
   creating: observability-workshop-main/
  inflating: observability-workshop-main/LICENSE
  inflating: observability-workshop-main/README.md
  ...
```

## Help
You can always run `make help` to get a list of the possible actions to run, like downloading the third party tools or install something.

## Download the tools
All you need to do is to run `make install-tools` in the rool folder of this project. To make all the tools available in your commandline interface, we recommend you to run `export PATH=$PWD/bin:$PATH` to add the `bin` folder to your `PATH` environment variable.

```sh
  $ export PATH=$PWD/bin:$PATH
  $ make install-tools
```

## Creating the cluster
You can use your own Kubernetes cluster, but we recommend to use a development cluster. You can create a development cluster called `ow` using `make create-cluster`.

