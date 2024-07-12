{
  # -> PHONE <- #
  xserver.desktopManager.phosh = {
	    enable = true;
			user = "ducky";
			group = "users";
			# for better compatibility with x11 applications
			phocConfig.xwayland = "immediate";
	};
					  
	# -> SYSTEM <- #
	environment.systemPackages = [ 
	    # Gnome
			pkgs.gnome-control-center
					    
			# Camera
			pkgs.megapixels
					    
			# SMS
			pkgs.chatty 
	]; 
					 
	# -> SERVICES <- #
	## GPS
	services.geoclue2.enable = true;
	users.users.geoclue.extraGroups = [ "networkmanager" ];
	programs.calls.enable = true; 
   
  systemd.services.ModemManager.serviceConfig.ExecStart = [
      "" # clear ExecStart from upstream unit file.
      "${pkgs.modemmanager}/sbin/ModemManager --test-quick-suspend-resume"
  ];
}  




