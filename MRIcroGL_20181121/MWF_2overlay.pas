// Description: This script functions as a template for plotting two overlays on 
// MNI template brain included in MRIcroGL download. *You must enter your own data paths*

// Language: Pascal
// Author: MWF, Oathes Lab

///////////////
/////////////// 2-overlay plot template
/////////////// 
begin
	resetdefaults;
	// load MNI template
	loadimage('mni152_2009bet');
	// load mask and threshold
	overlayloadsmooth(false); // i.e. use nearest neighbor interpolation
		// load 1st mask
		overlayload('/PATH/TO/YOUR/DATA1');
		overlaycolorname(1,'Green');
		// load 2nd mask
		overlayload('/PATH/TO/YOUR/DATA2');
		overlaycolorname(2,'Red');
		// overlay additive
		overlaytransparencyonoverlay(-1);
	// plot in 3slice view for exploration, arbitrary coordinates for exploration
	orthoview(0.4, 0.5, 0.5);
end.


