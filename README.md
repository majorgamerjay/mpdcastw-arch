<h1 align="center"> mpdcast-w </h1>
<h3 align="center">MPD+Icecast HTTP music streaming auto-configurator and installer wizard for Arch Linux(Systemd) and its variants!</h3>
<h3 align="center">Version: 1.0 || Last updated: 28/10/2020</h3>

After running through the whole configurator, you will have your own music server hosted in your PC and will stream through a .mp3!

### Dependencies:
- Bash
- Systemd
- Pacman
- A working internet connection! :)

### Note:
This will be a system-wide installation for the sake of simplicity and ease-of-use upon startup! If you have local configs, please delete it and the songs that you want to stream should be put on the specified directory, do not try to change it!

Please don't do any issues or pull-request if its related to code simplicity or code improvement or making it compatible for most POSIX shells and stuff. Unless it is about adding more features or fixing any bugs, don't make a pull request at all! Other than that, you are welcome to make issues if you have problems during installations using the script!
### How to install!
1. Clone the git repo:
```
git clone https://github.com/MajorGamerJay/mpdcastw-arch.git
```
2. Run it!

```
./mpdcastw-arch
```

and it'll run the script for you!

### How to use!
By invoking either mpdcastw-arch or mpdcast-wizard-arch will give you the following options to run:
```
Arguments:
    check               automatically check and install the requirements
    install_mpd         install mpd using pacman
    install_icecast     install icecast using pacman
    install_config      move configs in this directory to required locations
    install             automatically installs everything for you
```
If you do not have MPD and Icecast installed or you just want to reinstall everything, then do
`./mpdcastw-arch install`

It will run you through the whole installation and at the end, it will ask necessary information to build up your config, which also can be done using `./mpdcastw-arch install_config`, which will also install the config for you.

Required Information that will be asked for input:

Icecast:
1. Location: Location that will be displayed on the icecast webpage of your server, be it imaginary or real.
2. Admin username: Admin username for your server.
3. Admin password: Admin password for your server.
4. Hostname: Hostname that will be displayed in your server, giving default hostname is preferred to not to run into any trouble

MPD:
1. Stream name: Name of the stream (That will be displayed on the icecast page)
2. Mount name (<name>.mp3): The name of the music file that will be streamed through. For example, if you give Floonarb, it will be Floonarb.mp3

and done! All the mpd and icecast related services will be restarted and you will have your own Icecast + MPD server on port 8000!

### What now!
You stream music through MPD of course! At first, go to http://localhost:8000 or your local ip:8000 (with http, not https!) to see if the server is working, you should be greeted on an icecast server webpage.

Even though you cannot see any music stream, that's okay! Now, download a MPD client such as `ncmpcpp` or `mpc` or whatever's your favorite.

Your music directory is `/var/lib/mpd/playlists/`. Put all your songs or directories of songs there! Update your database in your music player, `u`-key for ncmpcpp or `mpc update` for mpc and voila! All your songs will appear on your MPD client, start a song and then go to localhost:8000 and you will see that your MPD client is detected and the song is being streamed there! Now, enjoy your locally hosted songs across your machines or port-forward it to enjoy it even outside your home!

If you find any issues in this guide, please do make an issue or any suggestions, please do make a pull request.

### License
Licensed under MIT License ha!

### Thanks
Thanks to:
- Freenode IRC: #gnu and ##linux for Makefiles related problems
- The Programmer's Hangout for helping me with shellscripts
- GNU for bash
- and everybody else
