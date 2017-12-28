FROM cynipe/gitdags

RUN yum install -y epel-release
RUN yum install -y https://$(rpm -E '%{?centos:centos}%{!?centos:rhel}%{rhel}').iuscommunity.org/ius-release.rpm

RUN yum install -y curl cabextract xorg-x11-font-utils fontconfig

RUN rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm
