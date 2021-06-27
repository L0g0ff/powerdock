FROM ubuntu:latest

# Prevent timezone questions during install of packages
ENV TZ=Europe/Amsterdam
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /development

RUN mkdir workspace projects
COPY vscode/default.code-workspace ./workspace/

COPY scripts/install_defaults.sh .
RUN ./install_defaults.sh

COPY scripts/install_pwsh.sh .
RUN ./install_pwsh.sh

COPY scripts/install_pwsh_modules.sh .
RUN ./install_pwsh_modules.sh

RUN mkdir -p /root/.config/powershell
COPY scripts/Microsoft.PowerShell_profile.ps1 /root/.config/powershell/Microsoft.PowerShell_profile.ps1
