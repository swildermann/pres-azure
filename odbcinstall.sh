wget -qO - https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/ubuntu/16.04/prod xenial main" \
 | sudo tee /etc/apt/sources.list.d/mssql-release.list \
 > /dev/null
sudo apt-get update
sudo ACCEPT_EULA=Y apt-get install -y msodbcsql
# optional: for unixODBC development headers
sudo apt-get install -y unixodbc-dev
