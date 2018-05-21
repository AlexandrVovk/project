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

[arg] - script knows arguments - cpu, mem, all

./metrics cpu - it shows information about cpu usage at that momemt

./metrics mem - it shows information about memory usage at that momemt 

./metrics all - it shows both information about cpu usage and memory usage

- Docker

type:

docker run mailalexandrvovk/project:docker-metrics bash -c "./metrics cpu"

docker run mailalexandrvovk/project:docker-metrics bash -c "./metrics mem"

docker run mailalexandrvovk/project:docker-metrics bash -c "./metrics all"

or

docker run mailalexandrvovk/project:docker-metrics

How script works
----------------

This script uses kernel/system statistics from pseudo-filesystem proc mounted at /proc, cpu data from /proc/stat, mem data from /proc/meminfo.
So script cat two files and awk print lines matching patterns.
After awk we get cpu string
cpu  23364 2890 11244 28216177 60696 0 1692 0 0 0
values start from  second field
from man proc
user   (1) 
nice   (2)
system (3)
idle   (4)
iowait (5)
irq	   (6)
softirq	(7)
steal   (8)
guest   (9)
guest_nice	(10)
Script sleep one second.
Then we got new cpu values, sum all cpu values and sum all new cpu values.
Next calculate difference between cpu and new_cpu sum.
Then calculate cpu usage during one second in percents.



Author
------

Oleksandr V. Vovk 
alexandr.vovk.v@gmail.com
