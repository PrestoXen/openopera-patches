# OpenOpera Patches
A collection of patches for the Opera 12.15 source code, feel free to make a pull request if you have anything to add or fix.

If you have any issues with Opera 12.15 please make a report on the [openopera-issues project](https://github.com/PrestoXen/openopera-issues/issues), or if you have problems with a patch please visit [the issue tracker here](https://github.com/PrestoXen/openopera-patches/issues). 

You're also welcome to join the OpenOpera IRC: http://site.anonnet.org/webirc/openopera  
Or join #openopera on crowley.anonnet.org:6697

## Contents

### General patches
- **FalseNullFix.patch**: patch to fix some FALSE->NULL errors
- **VP9Fix.patch**: VP9 support patch (requires libvpx-1.3.0 (exactly)), no Windows support atm.
- **DisableClickToActivate.patch**: disables "Click to activate" on Flash applets
- **LoadImagesParser.patch**: TWEAK_LOGDOC_LOAD_IMAGES_FROM_PARSER turned into two preferences

### Linux/FreeBSD patches
- **LinuxBuildFix.patch**: fixes some build issues on Linux
- **LinuxReleaseFix.patch**: makes Linux release builds more stable
- **JSExecutionFix.patch**: patch to fix javascript execution errors when building with modern compilers (g++ 5.x+)
- **PiInstructions.txt**: instructions on building for Raspberry Pi
- **PiFixes.patch**: patches for building on Raspberry Pi
- **ArmFixes.patch**: patches for building for ARM platform (needed for Pi)
- **freebsd-11-gcc6.patch**: FreeBSD compiling patch by kandeshvari, [source](https://gist.github.com/kandeshvari/6e69327fb017ea95bced85c6f297a29f)
- **FixFreeType.patch**: Fix building against system version of libfreetype with newer versions of the FreeType API

### Windows patches
- **VSInstructions.md**: guide for building with VS2010 and VS2015 (you should also read the alt version below)
- **VSInstructionsAlt.txt**: translated instructions provided by RedCatX, [source](https://geektimes.ru/post/284588/)
- **VS2015Fix.patch**: patch for building on VS2015

### Gstreamer (Opera patched edition)
- **gst-opera_instructions.txt**: guide for cloning the broken gst-opera repo into a working state
- **gst-opera_clone.bat**: batch script to clone the broken gst-opera repo (requires wget & git for Windows)
- **gst-opera_clone.sh**: shell script to clone the broken gst-opera repo (requires wget & git)
- **[gst-opera_opensource.opera.com.zip](http://www22.zippyshare.com/v/Wp1PrPRW/file.html)**: all the gst-opera repos, already cloned and zipped, with small edits for VS2015 support (external download)
