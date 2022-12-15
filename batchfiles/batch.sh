#!/bin/sh
# PATHTOPROJECT=\Source -- set this to the directory location of the directory containing the plugin.xml file.

PATHTOPROJECT=$1

cd /home/jeff-linux/Updated_Eclipse_Infocenter/InfocenterUpdater

WORKINGDIR=$PWD

echo $WORKINGDIR

cd $WORKINGDIR/batchfiles

java -jar $WORKINGDIR/depend/tools/saxon/saxon9.jar  -o:$PATHTOPROJECT/trash.txt $PATHTOPROJECT/plugin.xml $WORKINGDIR/depend/pmc_custom/root-script.xsl 

cd $WORKINGDIR/batchfiles
