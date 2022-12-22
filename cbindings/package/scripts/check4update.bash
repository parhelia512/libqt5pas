#!/usr/bin/bash

QTV=5    # or 5 or 6

REMOTE_pro="https://gitlab.com/freepascal.org/lazarus/lazarus/-/raw/main/lcl/interfaces/qt""$QTV""/cbindings/Qt""$QTV""Pas.pro"
REMOTEfile="Qt""$QTV""Pas.pro"
LOCALfile="libQtPas_src/cbindings/Qt""$QTV""Pas.pro"


# https://raw.githubusercontent.com/davidbannon/libqt6pas/master/cbindings/Qt6Pas.pro

wget "$REMOTE_pro"
REMOTEpat=`grep VER_PAT "$REMOTEfile"`
LOCALpat=`grep VER_PAT "$LOCALFILE"`
if [ "$REMOTEpat" == "$LOCALpat" ]; then
    exit 0
else
	# this means we need do rasie issue
	echo "$REMOTEpat" >> result.text
    exit 1
fi
# cat result.text

