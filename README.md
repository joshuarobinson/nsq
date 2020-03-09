# nsq
NSQ Utilities

Examine stats on the nsqd cluster.
kubectl exec -it pod/terminal -- curl http://nsqd:4151/stats

Generate messages using "find" for all directories.
find . -maxdepth 1 -type d | xargs -I{}  curl -d {} 'http://nsqd:4151/pub?topic=test'
