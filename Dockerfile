FROM archlinux/base

ADD pacman.conf /etc/pacman.conf
ADD mirrorlist /etc/pacman.d/mirrorlist

RUN pacman -Syu --noconfirm && pacman -S archlinuxcn-keyring --noconfirm  && pacman -Scc --noconfirm
# ARG _USER="arch"
# ARG _UID="1000"
# RUN env && useradd -m  -u ${_UID}  ${_USER}
# USER ${_USER}
