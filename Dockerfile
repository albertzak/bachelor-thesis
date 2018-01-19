FROM cynipe/gitdags

RUN yum install -y epel-release
RUN rpm -Uvh http://www.city-fan.org/ftp/contrib/yum-repo/city-fan.org-release-1-13.rhel6.noarch.rpm
RUN yum install -y libnghttp2
RUN yum install -y curl

RUN yum install -y https://$(rpm -E '%{?centos:centos}%{!?centos:rhel}%{rhel}').iuscommunity.org/ius-release.rpm
RUN yum install -y cabextract xorg-x11-font-utils fontconfig
RUN yum update -y ca-certificates

RUN rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm
