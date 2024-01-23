FROM mcr.microsoft.com/powershell:preview-7.4-alpine-3.17

RUN pwsh -c 'Install-Module Pode -Scope AllUsers -Force'
RUN pwsh -c 'Install-Module Pode.Web -Scope AllUsers -Force'

COPY ./src/ /app/
COPY ./database/ /app/database/
WORKDIR /app/

ENTRYPOINT [ "pwsh", "-File", "./run.ps1" ]