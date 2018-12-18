FROM frekele/gradle:3-jdk8

MAINTAINER Utkucan <utkucanyucel@gmail.com>

RUN update-ca-certificates \
 && apt-get update \
 && apt-get install -y --no-install-recommends \
            ant \
            rsync \
            bzip2 
RUN dpkg --add-architecture i386 && sudo apt update
sudo apt install \
libxt6:i386 \
libnspr4-0d:i386 \
libgtk2.0-0:i386 \
libstdc++6:i386 \
libnss3-1d:i386 \
libnss-mdns:i386 \
libxml2:i386 \
libxslt1.1:i386 \
libcanberra-gtk-module:i386 \
gtk2-engines-murrine:i386 \
flashplugin-nonfree-extrasound

# Make gnome-keyring visible to Adobe AIR

sudo ln -s /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0 2>/dev/null || echo "libgnome-keyring.so.0 already exists, moving on..."
sudo ln -s /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0 2>/dev/null || echo "libgnome-keyring.so.0.2.0 already exists, moving on..."

# Install Adobe AIR

curl -s http://drive.noobslab.com/data/apps/AdobeAir/adobe-air.sh | sudo sh -
