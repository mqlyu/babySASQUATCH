// Description: This script functions as a template for plotting two overlays with the mosaic feature, 
// using a MNI template brain included in MRIcroGL download. *You must enter your own data paths*

// Language: Pascal
// Author: MWF, Oathes Lab

///////////////
/////////////// Mosaic plot template
///////////////
begin
	resetdefaults;
	// load MNI template
	loadimage('mni152_2009bet');
	// load mask and threshold
	overlayloadsmooth(false); // i.e. use nearest neighbor interpolation
		// load 1st mask
		overlayload('/PATH/TO/YOUR/DATA1');
		// load 2nd mask
		overlayload('/PATH/TO/YOUR/DATA2');
		// overlay additive
		overlaytransparencyonoverlay(-1);
		// shader type
		shadername('simple');
	// plot sagittal multi-slice view, using preselected slices which were extracted after exploring using GUI 
	MOSAIC('S L- H -0.1 2 4 8 12; 16 21 25 29; 33 37 42 46; 50 54 58 C X R 0'); 
end.