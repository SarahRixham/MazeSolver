#!/bin/bash

TITLE=$1

SPACELESS_TITLE=`echo $TITLE | tr -d [:space:]`

LOWERCASE_TITLE=`echo $SPACELESS_TITLE | sed -e "s/^./\L&\E/"`

CURRENT_DIRECTORY=${PWD##*/}

LOWERCASE_CURRENT_DIRECTORY=`echo $CURRENT_DIRECTORY | sed -e "s/^./\L&\E/"`

SPACED_CURRENT_DIRECTORY=`echo $CURRENT_DIRECTORY | sed 's/\([A-Z]\)/ \1/g' | sed "s/^[ \t]*//"`

mv ../$CURRENT_DIRECTORY ../$SPACELESS_TITLE

sed -i -e "s/$SPACED_CURRENT_DIRECTORY/$TITLE/g" README.md

sed -i -e "s/$CURRENT_DIRECTORY/$SPACELESS_TITLE/g" pom.xml README.md src/main/java/$CURRENT_DIRECTORY/${CURRENT_DIRECTORY}.java src/test/java/$CURRENT_DIRECTORY/${CURRENT_DIRECTORY}Test.java

sed -i -e "s/$LOWERCASE_CURRENT_DIRECTORY/$LOWERCASE_TITLE/g" src/test/java/$CURRENT_DIRECTORY/${CURRENT_DIRECTORY}Test.java

mkdir src/main/java/$SPACELESS_TITLE

mv src/main/java/$CURRENT_DIRECTORY/${CURRENT_DIRECTORY}.java src/main/java/$SPACELESS_TITLE/${SPACELESS_TITLE}.java

rm -rf src/main/java/$CURRENT_DIRECTORY

mkdir src/test/java/$SPACELESS_TITLE

mv src/test/java/$CURRENT_DIRECTORY/${CURRENT_DIRECTORY}Test.java src/test/java/$SPACELESS_TITLE/${SPACELESS_TITLE}Test.java

rm -rf src/test/java/$CURRENT_DIRECTORY
