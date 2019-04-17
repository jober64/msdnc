FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
# Import certs
WORKDIR /app
COPY out ./
RUN chown -R 1001:0 ./
ENV ASPNETCORE_URLS http://*:8080
USER 1001
ENTRYPOINT ["dotnet", "webapp.dll"]
