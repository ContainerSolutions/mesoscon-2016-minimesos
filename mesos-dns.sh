#!/bin/bash

docker run -d --net=host -v "$(pwd)/config.json:/config.json" -v "$(pwd)/logs:/tmp" mesosphere/mesos-dns:0.5.2 /usr/bin/mesos-dns -v=2 -config=/config.json

