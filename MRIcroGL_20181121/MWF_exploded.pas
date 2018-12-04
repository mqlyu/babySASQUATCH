// Description: This script functions as a template for plotting an "exploded brain" on 
// MNI template brain included in MRIcroGL download. *You must enter your own data paths*
//		- Note: construction of "exploded brain" figure requires image editor,
// 		- 		this script saves individual slices (i.e. kSegments) which can be rearranged post-hoc

// Language: Pascal
// Author: MWF, Oathes Lab

///////////////
/////////////// exploded brain template
/////////////// (adapted from MRIcroGL documentation)
CONST 
	kSegments = 10;
VAR
	i: integer;
	start, thick: single;
BEGIN
	thick := 1/kSegments;
	RESETDEFAULTS;
	COLORBARVISIBLE(false);
	BACKCOLOR(255, 255, 255);
	LOADIMAGE('mni152_2009bet');
	OVERLAYLOAD('/PATH/TO/YOUR/DATA1');
	OVERLAYCOLORNAME(1,'redyell');
	OVERLAYMINMAX(1, 0.01, 1);
	AZIMUTHELEVATION(130, 15);
	SHADERNAME('simple');
	FOR i := 1 TO kSegments DO BEGIN
		start := (i-1)*thick;
		CLIPAZIMUTHELEVATION(start, 0, 180);
		CUTOUT(0.0, 0.0, 0.0, 1.0, 1.0-start-thick, 1.0);
		SAVEBMP('sector'+inttostr(i)); // (Default: to Desktop)
	END;
END.
