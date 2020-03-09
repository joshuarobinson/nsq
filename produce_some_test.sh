#!/bin/bash

kubectl exec -it pod/terminal -- for i in {1..99}; do echo "hello world $i"; done | curl -d "hello world $i" 'http://nsqd:4151/pub?topic=test'
#for i in {1..999}; do
#    kubectl exec -it pod/terminal -- curl -d "hello world $i" 'http://nsqd:4151/pub?topic=test'
#done
