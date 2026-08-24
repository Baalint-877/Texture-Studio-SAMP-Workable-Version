# Texture-Studio-SAMP-Workable-Version


A San Andreas Multiplayer (SA-MP) server setup, including gamemode, filterscripts, and configuration for running a Texture Studio server.

Texture Studio was originally created by [uL]Pottus, with further development by Crayder.

The original script explicitly permits modification and redistribution: *"You may modify and re-release this script if you please, just remember the mule who built it!"*

### Credits

- **[uL]Pottus** — original creator
- **Crayder** — further development
- **Y_Less** — sscanf, YSI
- **Slice** — strlib, sqlite
- **JaTochNietDan** — Filemanager
- **SDraw** — 3D Menu include
- **codectile** — Objectmetry functions
- **Baalint-877** — server setup and maintenance of this repository

## Requirements

- SA-MP 0.3.7 client to connect — official download page: https://gta-multiplayer.cz/downloads/sa-mp-0.3.7-R5-2-MP-install.exe
- SA-MP server package (not included) — same official download page: https://gta-multiplayer.cz/downloads/samp037_svr_R2-2-1_win32.zip

The plugins in this server require the Microsoft Visual C++ Runtime libraries. Download and install both of the following before running the server:

- Visual C++ 2010 Redistributable (x86): https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x86.exe
- Visual C++ 2015-2022 Redistributable (x86): https://aka.ms/vc14/vc_redist.x86.exe

## Setup

1. Download and extract the SA-MP server package from the official download page above.
2. Download this repo's files (Code → Download ZIP, or `git clone`) and copy/merge them into the extracted SA-MP server folder, overwriting where prompted — this repo does not include the base SA-MP server files, only the Texture Studio-specific ones.
3. Install the two Visual C++ Redistributable packages listed above (needed for the plugins to work).
3. Edit `server.cfg` and set a strong, unique `rcon_password` before running a public server.
4. Run `samp-server.exe`. Leave this console window open — it's the running server.
5. Open the SA-MP 0.3.7 client, enter the local address (see below), and connect.

## Connecting

- Same machine: `127.0.0.1:7777`
- Same local network: the server machine's local IP, e.g. `192.168.1.25:7777`

## Building from source

After modifying the filterscript source, run `translation.bat` to recompile `filterscripts/tstudio.pwn` into `tstudio.amx`.

## Troubleshooting

Full startup logs are written to `server_log.txt`.

## License

See LICENSE for details.
