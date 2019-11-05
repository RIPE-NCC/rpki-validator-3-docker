#Building
```
docker build . -t ripencc/rpki-validator-3-docker:alpine
```

#Running 
```
docker run --name validator-3-alpine -p 8080:8080 -d ripencc/rpki-validator-3-docker:alpine
```

#Logs 
Logs are now out on console. 

```
docker logs -f validator-3-alpine 
```
