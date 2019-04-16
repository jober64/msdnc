FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
WORKDIR /app
COPY out ./
USER 1001
ENTRYPOINT ["dotnet", "webapp.dll"]
