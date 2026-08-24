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

- SA-MP 0.3.7 client to connect
- SA-MP server package (not included — download separately)

The required Visual C++ runtime DLLs (2010 and 2015-2022) are already included in this repo, so no separate installation is needed.

## Setup

1. Download and extract the SA-MP server package, then copy this repo's files into it.
2. Edit `server.cfg` and set a strong, unique `rcon_password` before running a public server.
3. Run `samp-server.exe`. Leave this console window open — it's the running server.
4. Open the SA-MP 0.3.7 client, enter the local address (see below), and connect.

## Connecting

- Same machine: `127.0.0.1:7777`
- Same local network: the server machine's local IP, e.g. `192.168.1.25:7777`

## Building from source

After modifying the filterscript source, run `translation.bat` to recompile `filterscripts/tstudio.pwn` into `tstudio.amx`.

## Troubleshooting

Full startup logs are written to `server_log.txt`.

## License

See LICENSE for details.
