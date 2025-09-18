# Check if directory exists then perform initial creation
if [ ! -d "/dedicated-server/BoatGame/Binaries/Win64" ]; then
    steamcmd \
    +@sSteamCmdForcePlatformType windows \
    +force_install_dir /dedicated-server \
    +login anonymous \
    +app_update 3937860 validate \
    +quit
fi

pushd /dedicated-server/BoatGame/Binaries/Win64 > /dev/null
wine BoatGameServer-Win64-Shipping.exe
popd > /dev/null