# arch-custom
Custom Simplified Arch Linux Build


### About  :cactus:
Code apdopted from Carl Duff's pacbang-iso git repo and Midfingr's arch_livecd git repo: 
- https://github.com/archtrorg/pacbang-iso
- https://github.com/midfingr/arch_livecd


Special thanks to [__Dan__ (_midfinrg_)](https://github.com/midfingr) and his [YouTube channel](https://www.youtube.com/user/midfingr).\
May your soul rest in peace.\
Your work will never be forgotten.
:heart:


### Usage  :cactus:
If you want to modify this build, you are free to do so (on your Arch Linux machine):
1. Clone this repo: `git clone https://github.com/damoklov/arch-custom.git`.
2. Change ownership (probably important): `sudo chown -R root:root arch-custom`.
3. Run build: `./arch-custom/build.sh -v`.
4. Image will be in __out/__ directory.


### Logout workaround   :cactus:
If you do want to enable locking screen at logout, type following commands:
```
DISPLAY=:0 gsettings set org.cinnamon.desktop.screensaver lock-enabled true
DISPLAY=:0 gsettings set org.cinnamon.desktop.lockdown disable-lock-screen false
```
These features may not be enabled after clean installation due to an unknown error.

### Contributing   :cactus:
Main features that I need help with are:
* Enable screen locking after manual logout (as it is with locking after suspension)
