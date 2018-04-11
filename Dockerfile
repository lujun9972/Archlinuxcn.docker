FROM base/archlinux

ADD pacman.conf /etc/pacman.conf
ADD mirrorlist /etc/pacman.d/mirrorlist

RUN pacman -Syu --noconfirm && pacman -S archlinuxcn-keyring --noconfirm  && pacman -Scc --noconfirm
