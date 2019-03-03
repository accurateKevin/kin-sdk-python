@ECHO ON

REM Windows command file to build Python API documentation using Sphinx
REM    Open command window.
REM    Navigate to this directory.
REM    Run this file.
REM    If you haven't done this before you'll need to install Sphinx http://www.sphinx-doc.org/en/master/usage/installation.html

REM Quietly wipe out previous build
rmdir build /s /q


REM If you have installed the Kin SDK for Python, sphinx-apidoc will look at the installed files, not
REM    the ones you point to in the build. So if you want to edit docstrings you'll need to copy changed
REM    files to the installed location.
REM    Edit paths and uncomment to enable copy-and-build.

REM copy /Y kin\*.py C:\Python37\Lib\site-packages\kin
REM copy /Y kin\blockchain\*.py C:\Python37\Lib\site-packages\kin\blockchain

sphinx-apidoc -o source kin --force

sphinx-build -b html source build
