FROM mcr.microsoft.com/powershell:lts-7.2-alpine-3.17

RUN pwsh -c 'Install-Module Pode -Scope AllUsers -Force'

COPY ./src/ /app/
COPY ./database/ /app/database/
WORKDIR /app/

ENTRYPOINT [ "pwsh", "-File", "./run.ps1" ]