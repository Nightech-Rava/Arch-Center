
Skip to content
All gists
Back to GitHub
Sign in
Sign up

Instantly share code, notes, and snippets.
@yufengwng
yufengwng/arch_cheatsheet.txt
Last active July 17, 2024 16:34

Code
Revisions 3
Stars 81
Forks 34
Clone this repository at &lt;script src=&quot;https://gist.github.com/yufengwng/9cff3fc82403e3f3052d.js&quot;&gt;&lt;/script&gt;
Arch Linux Commands Cheatsheet
arch_cheatsheet.txt
pacman
======

view logs: /var/log/pacman.log

update system
# pacman -Syu

list installed packages
# pacman -Q

list packages no longer required by others
# pacman -Qdtq

search installed packages
# pacman -Qs <name>

search packages
# pacman -Ss <name>

install packages
# pacman -S <name>

remove package, its dependencies and config file backups
# pacman -Rns <name>

clean old packages in cache
# pacman -Sc

yaourt
======

same as pacman

systemd
=======

unit files: /usr/lib/systemd/system/ or /etc/systemd/system/

list running units
$ systemctl

check status
$ systemctl status <unit>

start/stop a service
# systemctl (start|stop) <unit>

enable/disable a service at bootup
# systemctl (enable|disable) <unit>

reload systemd
# systemctl daemon-reload

manual install of AUR packages
==============================

update repositories
# pacman -Sy

grab the package
$ curl -O <url> (e.g. https://aur.archlinux.org/packages/ya/yaourt/yaourt.tar.gz)

untar package
$ tar xzvf <package.tar.gz>

change into package directory
$ cd <package>

build and install
$ makepkg -si

java environments
=================

check status
$ archlinux-java status

set default version
# archlinux-java set <version>
