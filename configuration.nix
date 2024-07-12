  { config, pkgs, ... }:

	# -> IMPORT <- #
	{
	  imports =
	    [ # Include the results of the hardware scan.
	      ./hardware-configuration.nix
	      <home-manager/nixos>      
	      ./home.nix
	 # ./docker.nix
	    ];


	  # Bootloader.
	  boot.loader.systemd-boot.enable = true;
	  boot.loader.efi.canTouchEfiVariables = true;
	  
	  # ROCm
	  boot.initrd.kernelModules = [ "amdgpu" ];

	  networking.hostName = "desktop"; # Define your hostname.
	  # networking.wireless.enable = true;
	  # Configure network proxy if necessary
	  # networking.proxy.default = "http://user:password@proxy:port/";
	  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
	  networking.networkmanager.enable = true;
	  
	  i18n = {
	    consoleFont   = "lat9w-16";
	    consoleKeyMap = "sv-latin1";
	    defaultLocale = "sv_SE.UTF-8";
	  }; 

	  # -> LOCALE <- #
	  i18n.extraLocaleSettings = {
	    LC_ADDRESS = "sv_SE.UTF-8";
	    LC_IDENTIFICATION = "sv_SE.UTF-8";
	    LC_MEASUREMENT = "sv_SE.UTF-8";
	    LC_MONETARY = "sv_SE.UTF-8";
	    LC_NAME = "sv_SE.UTF-8";
	    LC_NUMERIC = "sv_SE.UTF-8";
	    LC_PAPER = "sv_SE.UTF-8";
	    LC_TELEPHONE = "sv_SE.UTF-8";
	    LC_TIME = "sv_SE.UTF-8";
	  };


	  # -> XSERVER <- #
	  services.xserver = {
	    enable     = true;
	    layout     = "se";
	    xkbOptions = "eurosign:e";
	    videoDrivers = [ "amdgpu" ];
	    displayManager.gdm.enable = true;
	    displayManager.autoLogin.enable = true;
	    desktopManager.gnome.enable = true;
	  };
	 
	  # -> AUTO LOGIN <= #
	  # Enable automatic login for the user.
	  services.displayManager.autoLogin.enable = true;
	  services.displayManager.autoLogin.user = "pungkula";
	  # Workaround for GNOME autologin: https://github.com/NixOS/nixpkgs/issues/103>
	  systemd.services."getty@tty1".enable = false;
	  systemd.services."autovt@tty1".enable = false;
	  
	  # Enable CUPS to print documents.
	  services.printing.enable = true;

	  # -> BRIGHTNESS <- #
	  hardware.acpilight.enable = true; 
	  
	  # ->SOUND (PIPEWIRRE) <- #
	  hardware.pulseaudio.enable = false;
	  security.rtkit.enable = true;
	  services.pipewire = {
	    enable = true;
	    alsa.enable = true;
	    alsa.support32Bit = true;
	    pulse.enable = true;
	    # If you want to use JACK applications, uncomment this
	    # jack.enable = true;
	    # use the example session manager (no others are packaged yet so this is enabled by default,
	    # no need to redefine it in your config for now)
	    # media-session.enable = true;
	  };

	  # -> DOCKER <- #
	  virtualisation.docker.rootless = {
	    enable = true;
	    setSocketVariable = true;
	  };
	  virtualisation.docker.daemon.settings = {
	    data-root = "/$HOME/docker";
	  };



	  # Define a user account. Don't forget to set a password with ‘passwd’.
	  users.users.pungkula = {
	    isNormalUser = true;
	    description = "pungkula";
	    extraGroups = [ "networkmanager" "wheel" ];
	    packages = with pkgs; [
	      vscodium      
	      vlc
	      ungoogled-chromium
	      vesktop
	      keepass
	      #pkgs.keepassxc
	      yubikey-personalization-gui
	      gnome.gnome-terminal
	      # vscode-with-extensions
	      wyoming-satellite
	    ];
	  };
	 
	########################################
	##### -> PROGRAMS <- #
	########################################

	  programs.firefox.enable = true;

	  # List packages installed in system profile. To search, run:
	  # $ nix search wget
	## INSTALL EXTEBSUIBS
	#  environment.systemPackages = with pkgs.gnomeExtensions; [
	#    blur-my-shell
	#    pop-shell
	    # ...
	#  ];

	  environment.systemPackages = with pkgs; [
	##################################
	    # -> SYSTEM PACKAGES <- #
	    ##############################
	   
	    # GNOME # 
	    pkgs.gnome.gnome-software
	    pkgs.gnome-extension-manager
	    pkgs.gnome.gnome-system-monitor
	    pkgs.gnome.gnome-themes-extra
	    pkgs.gnome.gnome-shell-extensions
	    pkgs.gnome.gnome-shell
	    pkgs.gnome.gnome-tweaks
	    gnome.gnome-terminal
	    pkgs.gnome-menus
	    # pkgs.gnome.nixos-gsettings-overrides
	    
	    # CONVERTERS
	    # dconf2nix # dconf2nix -i dconf.settings -o output/dconf.nix
	    pkgs.dconf2nix
	   
	    # pkgs.nix2nix - Generate nix expressions from mix.lock file.
	    
	    # stack2nix - Convert stack.yaml files into Nix build instructions.
	    # pkgs.stack2nix
	   
	    # MONITOR / SCREEN BRIGHTNESS
	    pkgs.acpilight 
	   
	    # Yubikey
	    libykclient
	    yubikey-agent
	    yubico-piv-tool
	    age-plugin-yubikey
	    yubikey-personalization-gui
	    yubikey-personalization
	    
	    ffmpeg_7-full
	    xmrig-mo
	    wyoming-satellite
	    vim
	    git
	    wget
	    docker-compose
	    # docker_27
	    drawing
	    imagemagick
	    direnv
	    pass
	    
	    # Python 3
	    python3
	    pkgs.python312Packages.websockets
	    pkgs.python312Packages.requests
	    pkgs.python312Packages.requests
	  ];

	## EXLUDE GNOME APPLIICATIONS
	  environment.gnome.excludePackages = (with pkgs; [
	    # for packages that are pkgs.*
	    gnome-tour
	    gnome-connections
	  ]) ++ (with pkgs.gnome; [
	    # for packages that are pkgs.gnome.*
	    epiphany # web browser    geary # email reader
	    evince # document viewer
	  ]);


	  # Some programs need SUID wrappers, can be configured further or are
	  # started in user sessions.
	  # programs.mtr.enable = true;
	  # programs.gnupg.agent = {
	  #   enable = true;
	  #   enableSSHSupport = true;
	  # };


	########################################
	##### -> SERVICES <- #####
	########################################
	  
	  services.openssh.enable = true;

	  # Open ports in the firewall.
	  # networking.firewall.allowedTCPPorts = [ ... ];
	  # networking.firewall.allowedUDPPorts = [ ... ];
	  # Or disable the firewall altogether.
	  # networking.firewall.enable = false;

	  # This value determines the NixOS release from which the default
	  # settings for stateful data, like file locations and database versions
	  # on your system were taken. It‘s perfectly fine and recommended to leave
	  # this value at the release version of the first install of this system.
	  # Before changing this value read the documentation for this option
	  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
	  system.stateVersion = "24.05"; # Did you read the comment?

	}
