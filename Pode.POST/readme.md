# Build container and Run

Build container 

```PowerShell
cd Pode.POST
docker build -t pode_post .
```

Run container 

```PowerShell
docker run -it --rm -p 8080:8080 pode_post
```

Run container with custom port

```PowerShell
docker run -it --rm -p 1000:1000 -e 'HTTP_PORT=1000' pode_post
```