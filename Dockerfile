FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /app 
#
# copy csproj and restore as distinct layers
COPY ./skinet.sln .
COPY ./API/*.csproj ./API/
COPY ./DAL/*.csproj ./DAL/
COPY ./Models/*.csproj ./Models/
#
RUN dotnet restore 
#
# copy everything else and build app
COPY ./API/. ./API/
COPY ./DAL/. ./DAL/
COPY ./Models/. ./Models/
COPY ./client/. ./client/
#
WORKDIR /app/API
RUN dotnet publish -c Release -o out 
#
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS runtime
WORKDIR /app 
#
COPY --from=build /app/API/out ./
ENV DOTNET_ENVIRONMENT=Docker
ENTRYPOINT ["dotnet", "API.dll"]