SOURCE="https://downloads.mixxx.org/mixxx-2.2.3/mixxx-2.2.3-bionic-amd64.deb"
DESTINATION="build.deb"
OUTPUT="Mixxx.AppImage"


all:
	echo "Building: $(OUTPUT)"
	wget -O $(DESTINATION) -c $(SOURCE)
	
	
	wget --continue https://www.rpmfind.net/linux/epel/6/x86_64/Packages/p/portaudio-19-9.el6.x86_64.rpm
	rpm2cpio portaudio-19-9.el6.x86_64.rpm | cpio -idmv
	
	wget --continue http://rpmfind.net/linux/epel/6/x86_64/Packages/p/portmidi-217-3.el6.x86_64.rpm
	rpm2cpio portmidi-217-3.el6.x86_64.rpm | cpio -idmv
	
	wget --continue http://ftp.br.debian.org/debian/pool/main/p/protobuf/libprotobuf-lite10_3.0.0-9_amd64.deb
	dpkg -x libprotobuf-lite10_3.0.0-9_amd64.deb ./
	
	
	wget --continue http://mirror.centos.org/centos/6/os/x86_64/Packages/libid3tag-0.15.1b-11.el6.x86_64.rpm
	rpm2cpio libid3tag-0.15.1b-11.el6.x86_64.rpm | cpio -idmv
	
	
	wget --continue https://li.nux.ro/download/nux/dextop/el6/x86_64/hidapi-0.7.0-2.a88c724.el6.nux.x86_64.rpm
	rpm2cpio hidapi-0.7.0-2.a88c724.el6.nux.x86_64.rpm | cpio -idmv
	
	wget --continue http://repo.okay.com.mx/centos/6/x86_64/release/opusfile-0.5-1.el6.x86_64.rpm
	rpm2cpio opusfile-0.5-1.el6.x86_64.rpm | cpio -idmv
	
	wget --continue https://rpmfind.net/linux/epel/7/x86_64/Packages/l/libmodplug-0.8.9.0-9.el7.x86_64.rpm
	rpm2cpio libmodplug-0.8.9.0-9.el7.x86_64.rpm | cpio -idmv


	wget --continue https://rpmfind.net/linux/epel/8/Everything/x86_64/Packages/l/libchromaprint-1.4.2-6.el8.x86_64.rpm
	rpm2cpio libchromaprint-1.4.2-6.el8.x86_64.rpm | cpio -idmv
	
	wget --continue https://rpmfind.net/linux/epel/7/x86_64/Packages/r/rubberband-1.8.1-8.el7.x86_64.rpm
	rpm2cpio rubberband-1.8.1-8.el7.x86_64.rpm | cpio -idmv	
	
	dpkg -x $(DESTINATION) ./
	rm -rf AppDir/opt
	
	mkdir --parents AppDir/mixxx
	mkdir --parents AppDir/lib
	mkdir --parents AppDir/share
	
	cp -r usr/lib64/* AppDir/lib
	cp -r usr/lib/mixxx/* AppDir/lib
	cp -r usr/lib/x86_64-linux-gnu/* AppDir/lib
	cp -r usr/lib/* AppDir/lib
	cp -r usr/share/* AppDir/share
	cp -r usr/bin/* AppDir/mixxx

	chmod +x AppDir/AppRun

	export ARCH=x86_64 && bin/appimagetool.AppImage AppDir $(OUTPUT)

	chmod +x $(OUTPUT)

	rm -f $(DESTINATION)
	rm -rf AppDir/mixxx
	rm -rf AppDir/share
	rm -rf AppDir/lib
	rm -rf usr
	rm -rf *.rpm
	rm -rf *.deb
	
