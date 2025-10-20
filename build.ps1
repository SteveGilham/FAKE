dotnet tool uninstall fake-cli
dotnet pack --version-suffix 1 --configuration Debug src/app/fake-cli/fake-cli.fsproj
dotnet tool install fake-cli --add-source "./src/app/fake-cli/bin/Debuge" --version 1.0.0-1
dotnet fake -v build --parallel 3 -e FAKE_DETAILED_ERRORS=true
