# OpenOpera Patches
A collection of patches sourced from different places, unknown authors (if you want to claim ownership of one just create an issue)

Feel free to make a pull request if you have anything to add or fix, or if you have any issues please make a report at https://github.com/PrestoXen/openopera-issues

You're also welcome to join the OpenOpera IRC: http://site.anonnet.org/webirc/openopera  
Or join #openopera on crowley.anonnet.org:6697

## Contents

### General patches
- **FalseNullFix.patch**: patch to fix some FALSE->NULL errors
- **VP9Fix.patch**: VP9 support patch (requires libvpx-1.3.0 (exactly)), no Windows support atm.
- **DisableClickToActivate.patch**: Disables "Click to activate" on Flash applets

### Linux/FreeBSD patches
- **LinuxBuildFix.patch**: fixes some build issues on Linux
- **LinuxReleaseFix.patch**: makes Linux release builds more stable
- **JSExecutionFix.patch**: patch to fix javascript execution errors when building with modern compilers (g++ 5.x+)
- **PiInstructions.txt**: instructions on building for Raspberry Pi
- **PiFixes.patch**: patches for building on Raspberry Pi
- **ArmFixes.patch**: patches for building for ARM platform (needed for Pi)
- **freebsd-11-gcc6.patch**: FreeBSD compiling patch by kandeshvari, [source](https://gist.github.com/kandeshvari/6e69327fb017ea95bced85c6f297a29f)

### Windows patches
- **VSInstructions.txt**: instructions for building with VS (you should read this and the alternate version below)
- **VSInstructionsAlt.txt**: translated instructions provided by RedCatX, [source](https://geektimes.ru/post/284588/)
- **VS2015Fix.patch**: patch for building on VS2015

A full mirror of gst-opera (gstreamer code used by Opera) is also uploaded [here](http://www22.zippyshare.com/v/Wp1PrPRW/file.html), as the mirror on opensource.opera.com has a lot of issues when cloning.
