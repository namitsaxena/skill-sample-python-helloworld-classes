#!/bin/bash
# https://developer.amazon.com/en-US/docs/alexa/alexa-skills-kit-sdk-for-python/develop-your-first-skill.html
#  - Copy the hello_world.py file into the site-packages folder and create a .zip file of the contents of the folder (not the folder itself). Name the file skill.zip. 
# creates a package for uploading to aws with code and dependencies

venvName=venv
vWorkDir=tmp

# get say '3.8'  
vPythonMajorVersionNumber=$(python3 --version | cut -d' ' -f2 | cut -d. -f1,2)

rm -rf "${vWorkDir}" 2> /dev/null
mkdir ${vWorkDir}
cp -r ${venvName}/lib/python${vPythonMajorVersionNumber}/site-packages/* ${vWorkDir}
cp -r lambda/py/* ${vWorkDir}

cd ${vWorkDir}
zip skill.zip * -r -X
cp skill.zip ..

cd ..
rm -rf "${vWorkDir}" 2> /dev/null