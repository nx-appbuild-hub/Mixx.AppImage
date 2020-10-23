# Copyright 2020 Alex Woroschilow (alex.woroschilow@gmail.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
PWD:=$(shell pwd)
DESTINATION="build.deb"
OUTPUT="Mixxx.AppImage"


all:
	mkdir --parents $(PWD)/build

	wget --output-document=$(PWD)/build/build.deb https://downloads.mixxx.org/mixxx-2.2.3/mixxx-2.2.3-bionic-amd64.deb
	dpkg -x $(PWD)/build/build.deb $(PWD)/build	
	
	wget --output-document=$(PWD)/build/build.rpm https://www.rpmfind.net/linux/epel/6/x86_64/Packages/p/portaudio-19-9.el6.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..
	
	wget --output-document=$(PWD)/build/build.rpm http://rpmfind.net/linux/epel/6/x86_64/Packages/p/portmidi-217-3.el6.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..
	
	wget --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/AppStream/x86_64/os/Packages/protobuf-lite-3.5.0-7.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..	
	
	wget --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/6/os/x86_64/Packages/libid3tag-0.15.1b-11.el6.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..	
	
	wget --output-document=$(PWD)/build/build.rpm https://li.nux.ro/download/nux/dextop/el6/x86_64/hidapi-0.7.0-2.a88c724.el6.nux.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..
	
	wget --output-document=$(PWD)/build/build.rpm http://repo.okay.com.mx/centos/6/x86_64/release/opusfile-0.5-1.el6.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..
	
	wget --output-document=$(PWD)/build/build.rpm https://rpmfind.net/linux/epel/7/x86_64/Packages/l/libmodplug-0.8.9.0-9.el7.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --output-document=$(PWD)/build/build.rpm https://rpmfind.net/linux/epel/8/Everything/x86_64/Packages/l/libchromaprint-1.4.2-6.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..
	
	wget --output-document=$(PWD)/build/build.rpm https://rpmfind.net/linux/epel/7/x86_64/Packages/r/rubberband-1.8.1-8.el7.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..
	
	wget --output-document=$(PWD)/build/build.rpm https://download-ib01.fedoraproject.org/pub/fedora/linux/updates/testing/33/Everything/x86_64/Packages/l/lilv-0.24.10-1.fc33.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..	
		
	wget --output-document=$(PWD)/build/build.rpm https://rpmfind.net/linux/epel/7/x86_64/Packages/p/portaudio-19-16.el7.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..
	
	wget --output-document=$(PWD)/build/build.rpm https://rpmfind.net/linux/mageia/distrib/7/x86_64/media/core/release/lib64serd0_0-0.30.0-1.mga7.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..
	
	wget --output-document=$(PWD)/build/build.rpm https://pkgs.dyn.su/el8/multimedia/x86_64/sord-0.16.4-3.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..
	
	wget --output-document=$(PWD)/build/build.rpm https://pkgs.dyn.su/el8/multimedia/x86_64/sratom-0.6.4-2.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --output-document=$(PWD)/build/build.rpm https://pkgs.dyn.su/el8/multimedia/x86_64/sratom-0.6.4-2.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/AppStream/x86_64/os/Packages/qt5-qtx11extras-5.12.5-1.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/AppStream/x86_64/os/Packages/qt5-qtbase-5.12.5-4.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/AppStream/x86_64/os/Packages/qt5-qtbase-gui-5.12.5-4.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/AppStream/x86_64/os/Packages/qt5-qtscript-5.12.5-1.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/AppStream/x86_64/os/Packages/qt5-qtsvg-5.12.5-1.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --output-document=$(PWD)/build/build.deb http://archive.ubuntu.com/ubuntu/pool/main/p/protobuf/libprotobuf-lite10_3.0.0-9.1ubuntu1_amd64.deb
	dpkg -x $(PWD)/build/build.deb $(PWD)/build	

	wget --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/AppStream/x86_64/os/Packages/libmad-0.15.1b-25.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/BaseOS/x86_64/os/Packages/libicu-60.3-2.el8_1.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/BaseOS/x86_64/os/Packages/pcre2-utf16-10.32-1.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..

	wget --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/AppStream/x86_64/os/Packages/libxcb-1.13.1-1.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..	

	wget --output-document=$(PWD)/build/build.rpm https://download-ib01.fedoraproject.org/pub/epel/8/Everything/x86_64/Packages/l/libsqlite3x-20071018-26.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..	

	wget --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/BaseOS/x86_64/os/Packages/sqlite-3.26.0-6.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..	

	wget --output-document=$(PWD)/build/build.rpm http://mirror.centos.org/centos/8/BaseOS/x86_64/os/Packages/sqlite-libs-3.26.0-6.el8.x86_64.rpm
	cd $(PWD)/build && rpm2cpio $(PWD)/build/build.rpm | cpio -idmv && cd ..	



	mkdir --parents $(PWD)/build/AppDir/bin
	mkdir --parents $(PWD)/build/AppDir/lib
	mkdir --parents $(PWD)/build/AppDir/share

	cp -r --force $(PWD)/build/lib64/* 		$(PWD)/build/AppDir/lib 		| true
	cp -r --force $(PWD)/build/lib/* 		$(PWD)/build/AppDir/lib 		| true	
	cp -r --force $(PWD)/build/usr/lib64/* 	$(PWD)/build/AppDir/lib 		| true
	cp -r --force $(PWD)/build/usr/lib/* 	$(PWD)/build/AppDir/lib 		| true	
	cp -r --force $(PWD)/build/usr/share/* 	$(PWD)/build/AppDir/share		| true
	cp -r --force $(PWD)/build/usr/bin/* 	$(PWD)/build/AppDir/bin			| true
	cp -r --force $(PWD)/AppDir/* 			$(PWD)/build/AppDir				| true

	cp -r --force $(PWD)/build/usr/lib64/qt5/plugins/platforms $(PWD)/build/AppDir/bin/


	chmod +x $(PWD)/build/AppDir/AppRun

	export ARCH=x86_64 && bin/appimagetool.AppImage $(PWD)/build/AppDir $(OUTPUT)

	chmod +x $(OUTPUT)

clean:
	rm -rf $(PWD)/build
