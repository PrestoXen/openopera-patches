#!/bin/sh
git clone http://sourcecode.opera.com/gstreamer/gst-opera.git
cd gst-opera

# clone sub-modules manually
git clone http://sourcecode.opera.com/gstreamer/libogg.git
git clone http://sourcecode.opera.com/gstreamer/libvorbis.git
git clone http://sourcecode.opera.com/gstreamer/libtheora.git
git clone http://sourcecode.opera.com/gstreamer/glib.git
git clone http://sourcecode.opera.com/gstreamer/gstreamer.git
git clone http://sourcecode.opera.com/gstreamer/gst-plugins-base.git
git clone http://sourcecode.opera.com/gstreamer/gst-plugins-good.git

# gst-plugins-bad is borked, need to clone it a different way
# YOU NEED WGET INSTALLED FOR THIS TO WORK
wget -r http://sourcecode.opera.com/gstreamer/gst-plugins-bad.git -P gst-opera-bad1.git
git clone gst-opera-bad1.git/sourcecode.opera.com/gstreamer/gst-plugins-bad.git

# setup each sub-module repo to have correct code
cd glib
git checkout remotes/origin/2.20.5+OPERA

cd ../gst-plugins-bad
git checkout remotes/origin/RELEASE-0.10.19+OPERA

cd ../gst-plugins-base
git checkout remotes/origin/RELEASE-0.10.29+OPERA

cd ../gst-plugins-good
git checkout remotes/origin/RELEASE-0.10.23+OPERA

cd ../gstreamer
git checkout remotes/origin/RELEASE-0.10.29+OPERA

# done!
echo gst-opera clone finished!