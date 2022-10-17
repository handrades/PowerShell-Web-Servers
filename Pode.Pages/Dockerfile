FROM mcr.microsoft.com/powershell:lts-7.2-alpine-3.14

RUN pwsh -c 'Install-Module Pode -Scope CurrentUser -Force'
RUN pwsh -c 'Install-Module Pode.Web -Scope CurrentUser -Force'

COPY ./src/ /app/
COPY ./database/ /app/database/
WORKDIR /app/

ENTRYPOINT [ "pwsh", "-File", "./run.ps1" ]