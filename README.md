Project command line script for Linux based OS
==============================================

This project contains a bash script which prints basic information about your linux server to console.

Prerequisites
-------------

This script works on linux based OS.
Run script in bash.


Get script
----------

You can get this script by clone repository

git clone https://github.com/AlexandrVovk/project.git

You can get this script from Docker Hub

docker pull mailalexandrvovk/project



Running the script
------------------

- Shell 

To execute the script from script directory, type:

./metrics [arg]

[arg] - script knows two arguments - cpu or mem

./metrics cpu - it shows information about cpu usage at that momemt

./metrics mem - it shows information about memory usage at that momemt 

- Docker

cpu metrics, type:

docker run mailalexandrvovk/project:docker-metrics bash -c "./metrics cpu"

mem metrics, type:

docker run mailalexandrvovk/project:docker-metrics bash -c "./metrics mem"

cpu & mem metrics, type:

docker run mailalexandrvovk/project:docker-metrics bash -c "./metrics all"
or
docker run mailalexandrvovk/project:docker-metrics


Author
------

Oleksandr V. Vovk 
alexandr.vovk.v@gmail.com
