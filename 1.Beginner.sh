#!/bin/bash

Nodes - Virtual or Physical Machines
Master Node/s 
Worker Node/s

# Components of Kubernetes
1.API server
2.ETCD server
3.Kublet
4.Container Runtime
5.Controller
6.Scheduler

#Tools for interacting with container runtime
docker - by docker
nerdctl - by containerd community and its more genera purpose
crictl - by docker - best used for debugging kubernetes aware containers and pods
ctr - by containerd community - best used for debugging containerd runtimes
# Docker is not fully OCI open conatiner interface compliant(image spec and runtime spec)

# It's preffered to use crictl instead of docker commands to handle container runtime
Supported runtime endpoints until Kubernetes < 1.24
unix:///var/run/dockershim.sock
unix:///run/containerd/containerd.sock
unix:///run/crio/crio.sock
unix:///var/run/cri-dockerd.sock

Supported runtime enpoints from Kubernetes >=1.24
unix:///run/containerd/containerd.sock
unix:///run/crio/crio.sock
unix:///var/run/cri-dockerd.sock

To use crictl we have to set the following environment variable or add the argument for the correct endpoint to use
crictl --runtime-endpoint

export CONTAINER_RUNTIME_ENDPOINT


# Creating a pod, pulling an image from docker hub and running a container 
kubectl run nginx --image nginx
kubectl get pods
kubectl describe pod nginx
kubectl get pods -o wide

# To create a deployment using imperative command, use kubectl create:
kubectl create deployment nginx --image=nginx

# YAML types recap

1. Key: Value 
vi example_key-value-pair.yaml
Fruit: Apple
Vegetable: Carrot
Liquid: Water
Meat: Chicken

2.Array/List
vi example_Key-Value-pair-In-Array.yaml

Fruits:
- Orange
- Apple
- Banana

Vegetables:
- Carrot
- Cauliflower
- Tomato

3. Dictionary/Map
vi example_Key-Value-Pair-Dictionary.yaml

Banana:
    Calories: 105
    Fat: 0.4 g
    Cabs: 27 g
Grapes
    Calories: 62
    Fat: 0.3 g
    Cabs: 16 g
4. Key/Value, Dictionary and Lists
vi example_key-value-dictionary-lists.yaml

Fruits:
    -   Banana:
            calories: 105
            Fat:    0.4 g
            carbs: 27 g
    -   Grapes:
            calories: 62
            Fat: 0.3 g
            carbs: 16 g




