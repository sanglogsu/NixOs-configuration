{ config, pkgs, nixpkgs, ... }:

{

       console.useXkbConfig = true;
 
       services.xserver = {
	enable = true;
	layout = "de";
	libinput.enable = true;
	displayManager.lightdm.enable = true;
	desktopManager.plasma5.enable = true;
	
	
       };

	environment.plasma5.excludePackages = with pkgs.libsForQt5; [
  		elisa
  		gwenview
  		okular
  		oxygen
  		khelpcenter
  		konsole
  		plasma-browser-integration
  		print-manager
		];  

}
