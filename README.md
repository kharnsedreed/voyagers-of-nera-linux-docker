# voyagers-of-nera-linux-docker
Dockerfile for spinning up a Voyagers of Nera server via Wine on an Ubuntu docker image.

## Build
The following instructions are for building then running the image

1. Pull the repository to local directory
2. Run ```docker build -t voyagersofnera:latest .``` this will create an image locally on your machine to use later

## Server Setup
1. Create a directory on your machine
2. Copy the `docker-compose.yaml` from this repo to that directory (or create yourself manually)
3. Run the server initially to create the files `docker compose up -d`
4. Once all of the local files are created then take the server down `docker compose down` so you can change settings
5. A `config` directory should now exist, in there you will find the following files
   * CustomGameUserSettings.ini
   * CustomHostServerUserSettings.ini
6. Modify these files per - https://treehousegames.notion.site/How-to-Host-Dedicated-Servers-1debc50b8edb803b9d5bd4dbfdb32c2c#271bc50b8edb8066b288ef74349c2545
7. Start server again `docker compose up -d` 

## Update
Trying to create an easier way to update but for now:

1. Stop the server if its running `docker compose down`
2. Remove the `./dedicated-server` directory in your local machine
3. Start the server again `docker compose up -d`

## Configuration
All configuration files are setup using a volume to the `./config` directory.

The following will help you work out what these do - https://treehousegames.notion.site/How-to-Host-Dedicated-Servers-1debc50b8edb803b9d5bd4dbfdb32c2c#271bc50b8edb8066b288ef74349c2545
