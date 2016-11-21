cd xypic

WORK_DIR=/usr/local/texlive/2016basic/texmf-local

echo "Step 2. Macros"
MACRO_DIR=$WORK_DIR/tex/generic/xypic/
mkdir -p $MACRO_DIR
cp texinputs/* $MACRO_DIR

echo "Step 3. TeX Font Metric"
FONT_DIR=$WORK_DIR/fonts/tfm/public/xypic/
mkdir -p $FONT_DIR
cp texfonts/*.tfm $FONT_DIR

echo "Step 4. METAFONT Sources"
METAFONT_DIR=$WORK_DIR/fonts/source/public/xypic/
mkdir -p $METAFONT_DIR
cp mfinputs/*.mf $METAFONT_DIR

echo "Step 5. PostScript Type1 Fonts"
POSTSCRIPT_DIR=$WORK_DIR/fonts/type1/public/xypic/
mkdir -p $POSTSCRIPT_DIR
cp type1/*.pfb $POSTSCRIPT_DIR

echo "Step 6. PostScript Font Metric Files"
POSTSCRIPT_FONTMETRIC_DIR=$WORK_DIR/fonts/pfm/public/xypic/
mkdir -p $POSTSCRIPT_FONTMETRIC_DIR
cp pfm/*.pfm $POSTSCRIPT_FONTMETRIC_DIR

echo "Step 7. Adobe Font Metric Files"
ADOBE_DIR=$WORK_DIR/fonts/afm/public/xypic/
mkdir -p $ADOBE_DIR
cp afm/*.afm $ADOBE_DIR

echo "Step 8. PostScript Header Files"
HEADLER_DIR=$WORK_DIR/dvips/xypic
mkdir -p $HEADLER_DIR
cp ps/* $HEADLER_DIR

echo "Step 9. PostScript Font Map Files"
FONT_MAP_DIR=$WORK_DIR/fonts/map/dvips/xypic/
mkdir -p $FONT_MAP_DIR
cp map/* $FONT_MAP_DIR

echo "Step 10. PDF Font Encoding Files"
FONT_ENC_DIR=$WORK_DIR/fonts/enc/dvips/xypic/
mkdir -p $FONT_ENC_DIR
cp enc/* $FONT_ENC_DIR

echo "Step 11. Documentation"
DOC_DIR=$WORK_DIR/doc/generic/xypic/
mkdir -p $DOC_DIR
cp doc/* $DOC_DIR

sudo mktexlsr
