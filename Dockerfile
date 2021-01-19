FROM microsoft/dotnet:2.0-sdk
WORKDIR /sample-app/

# kopiujemy plik .csproj oraz używamy polecenia dotnet restore
COPY *.csproj ./
RUN dotnet restore

# kopiujemy i dokonujemy build'a całej reszty
COPY . ./sample-app
RUN dotnet build -c Release
ENTRYPOINT ["dotnet", "run", "-c", "Release", "--no-build"]
