## Requirements
- VS2010 with Service Pack 1 or VS2015 (VS2010 is more stable atm)
- vsyasm 1.2.0 (NOT 1.3.0 - it has a bug regarding capitalization of the string 'Win32' - make sure to read the readme to see how to install it)
- Python 2.7 (make sure its added to your PATH, once installed open command prompt and run 'cpan XML::Twig')
- Perl 5
- 7zip
- Pike 7.8.352 (pike-v7.8.352-win32.msi)
(these can all be found here: https://mega.nz/#F!epZjXIwY!_Dj6Em3cnAMEojKRMNS3MQ except for 7zip)

For the most complete build you should have everything listed above. You should also make sure the folders for Python, Perl, 7zip and Pike are in your systems PATH. 

## Setup

Open a command prompt at the root of the Opera source and run the following command to generate the project files.

    python platforms\windows\vcxproj_update.py

You can also run this command whenever you need to regenerate the projects.

### Building autoupdate_checker

To build the autoupdate_checker project you'll need to download cURL 7.28 and OpenSSL 1.0.1c. Extract them into these folders:
- adjunct\autoupdate\autoupdate_checker\platforms\universal_adaptation_layer\network\curl
- adjunct\autoupdate\autoupdate_checker\platforms\universal_adaptation_layer\network\openssl

Now open the curl\lib\libcurl.vcproj in VS2010 and upgrade the project, after that open the libcurl project properties.

In the Release configuration set C/C++ > Code Generation > Runtime Library to 'Multi-threaded (/MT)'
For Debug config set it to 'Multi-threaded Debug (/MTd)', and then build libcurl in both configurations.

To build OpenSSL, open a VS command prompt (Start menu -> Visual Studio 2010 Command Prompt), change into the openssl directory:

    cd "<source-path>\adjunct\autoupdate\autoupdate_checker\platforms\universal_adaptation_layer\network\openssl"
    
And then run the following to compile it:

    perl Configure VC-WIN32 no-shared --prefix=../../../../Output/openssl -MT
    ms\do_ms
    nmake -f ms\ntdll.mak
    nmake -f ms\ntdll.mak install

Once that's finished copy the following into autoupdate_checker\Output:

- curl\lib\Release\libcurl.lib
- openssl\lib\libeay32.lib
- openssl\lib\ssleay32.lib

Now rerun the python script from earlier to regenerate the projects:

    cd "<source-path>"
    python platforms\windows\vcxproj_update.py

Finally open the solution and in the autoupdate_checker projects properties, go to Linker > Input > Additional Dependencies and add wldap32.lib for each configuration

Now you should be able to build autoupdate_checker successfully! (credits to RedCatX for the guide)

## VS2010
 
Just open the the platforms/windows/Opera_vs2010.sln file and then choose your build type, platform, and hit build! If you followed the autoupdate_checker instructions above all projects should build successfully, otherwise you should get 11 projects built with 1 failed.

In the root of the source there will be either a Release/ folder or Debug/ folder, inside there is the built files with a full Opera install.

If you installed 7zip and added it to your PATH earlier the skin files will also be built, otherwise you will need to copy these from an existing 12.15 install.

## VS2015

Make sure you applied the VS2015Fix.patch file, follow the VS2010 section above and then allow VS2015 to convert the project. For 32-bit builds it should build fine with no errors, but for x64 only Release builds will build right now.

On x64 builds there may be issues with CSS on certain sites (and probably other errors), to fix these:
- right click the 'desktop_starter' project file, open properties
- go to Linker -> Advanced
- set 'Randomized Base Address' to 'No (/DYNAMICBASE:NO)'
- set 'Fixed Base Address' to 'Yes (/FIXED)'.

Unsure why this is needed. There's a thread about it at https://github.com/PrestoXen/openopera-issues/issues/10