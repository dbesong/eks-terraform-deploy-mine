#!/bin/bash


response="$(aws eks list-clusters --region us-east-1 --output text | grep -i danieltest-cluster 2>&1)" 
if [[ $? -eq 0 ]]; then
    echo "Success: danieltest-cluster exist"
    aws eks --region us-east-1 update-kubeconfig --name danieltest-cluster && export KUBE_CONFIG_PATH=~/.kube/config

else
    echo "Error: danieltest-cluster does not exist"
fi