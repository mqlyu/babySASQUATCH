// Description: This script functions as a template for plotting rendered 3D perspectives on 
// MNI template brain included in MRIcroGL download. *You must enter your own data paths*

// Language: Pascal
// Author: MWF, Oathes Lab


///////////////
/////////////// 3D rendered brain, saves multiple perspectives
///////////////
begin
	resetdefaults;
	// load MNI template
	loadimage('mni152_2009bet');
	// load mask and threshold
	overlayloadsmooth(false);
		// load mask #1
		overlayload('/PATH/TO/YOUR/DATA1');
		overlaycolorname(1, '5redyell');
		overlayminmax(1, 0.5,0.8);

		// load mask #2
		overlayload('/PATH/TO/YOUR/DATA2');
		overlaycolorname(2, '5redyell');
		overlayminmax(2, 0.5,0.8);

		// load mask #3
		overlayload('/PATH/TO/YOUR/DATA3');
		overlaycolorname(3, '5redyell');
		overlayminmax(3, 0.5,0.8);

		// overlay non-additive
		overlaytransparencyonoverlay(0);
		// shader type
		shadername('overlay_new');
			shaderadjust('boundThresh', 0.5035);
			shaderadjust('backAlpha', 1);
			shaderadjust('overDistance', 0);
			shaderadjust('overAlpha',1.3);
			shaderadjust('overShade',0.28);
			
		// change background to white
		backcolor(255,255,255);
		colorbarvisible(false);
		
		// set perspective for png saving
		azimuthelevation(132,20) //132,15
			// save plot #1 (deafult: to Desktop)
			savebmp('Perspective1')
		// set perspective 2 for png saving
		azimuthelevation(110,11) // 150,11
			// save plot #2, (Default: to Desktop)
			savebmp('Perspective2')

end.