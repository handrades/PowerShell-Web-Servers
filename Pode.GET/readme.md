# Build container and Run

Build container 

```PowerShell
cd Pode.GET
docker build -t pode_get .
```

Run container 

```PowerShell
docker run -it --rm -p 8080:8080 pode_get
```

Run container with custom port

```PowerShell
docker run -it --rm -p 1000:1000 -e 'HTTP_PORT=1000' pode_get
```