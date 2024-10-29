# ISIPSecurityCamp-Challenges

## System
Ubuntu 22.04 up

## Docker Engine

```
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```

## Before Start the lab

- You need to change some varible in `docker-compose.yml` so that it can run normally without any error
- In the `docker-compose.yml` search for string REACT_APP_API_SERVER and change 127.0.0.1 to your public server IP or FQDN

## How to Start the lab

```
docker compose up -d
```
