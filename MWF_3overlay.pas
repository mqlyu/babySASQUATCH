// Description: This script functions as a template for plotting three overlays on 
// MNI template brain included in MRIcroGL download. *You must enter your own data paths*

// Language: Pascal
// Author: MWF, Oathes Lab

///////////////
/////////////// 3-overlay plot template
///////////////
begin
	resetdefaults;
	// load MNI template
	loadimage('mni152_2009bet');
	// load mask and threshold
	overlayloadsmooth(false); // i.e. use nearest neighbor interpolation
		// load 1st mask
		overlayload('/PATH/TO/YOUR/DATA1');
		overlaycolorname(1,'Red');
		// load 2nd mask
		overlayload('/PATH/TO/YOUR/DATA2');
		overlaycolorname(2,'Green');
		// load 3rd mask
		overlayload('/PATH/TO/YOUR/DATA3');
		overlaycolorname(3,'Blue');
		// overlay additive
		overlaytransparencyonoverlay(-1);
		// shader type
		shadername('simple');
end.