# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/Characters" = {
      recent-characters = [ "\447" ];
    };

    "org/gnome/Console" = {
      custom-font = "DejaVu Sans Mono 14";
      last-window-maximised = false;
      last-window-size = mkTuple [ 812 576 ];
      use-system-font = false;
      visual-bell = false;
    };

    "org/gnome/TextEditor" = {
      last-save-directory = "file:///home/pungkula";
      show-line-numbers = true;
    };

    "org/gnome/calculator" = {
      accuracy = 9;
      angle-units = "degrees";
      base = 10;
      button-mode = "basic";
      number-format = "automatic";
      show-thousands = false;
      show-zeroes = false;
      source-currency = "";
      source-units = "degree";
      target-currency = "";
      target-units = "radian";
      window-maximized = false;
      window-size = mkTuple [ 387 514 ];
      word-size = 64;
    };

    "org/gnome/calendar" = {
      active-view = "month";
    };

    "org/gnome/control-center" = {
      last-panel = "system";
      window-state = mkTuple [ 980 640 false ];
    };

    "org/gnome/desktop/a11y" = {
      always-show-universal-access-status = true;
    };

    "org/gnome/desktop/a11y/applications" = {
      screen-magnifier-enabled = true;
      screen-reader-enabled = false;
    };

    "org/gnome/desktop/a11y/interface" = {
      high-contrast = true;
      show-status-shapes = true;
    };

    "org/gnome/desktop/a11y/keyboard" = {
      mousekeys-enable = true;
      togglekeys-enable = true;
    };

    "org/gnome/desktop/a11y/magnifier" = {
      brightness-blue = 0.25277777777777777;
      brightness-green = 0.25277777777777777;
      brightness-red = 0.25277777777777777;
      color-saturation = 0.9444444444444444;
      contrast-blue = 0.6902777777777777;
      contrast-green = 0.6902777777777777;
      contrast-red = 0.6902777777777777;
      invert-lightness = false;
      lens-mode = true;
      mag-factor = 5.0;
      mouse-tracking = "proportional";
      scroll-at-edges = true;
      show-cross-hairs = false;
    };

    "org/gnome/desktop/a11y/mouse" = {
      dwell-click-enabled = false;
      secondary-click-enabled = false;
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" "Pardus" ];
    };

    "org/gnome/desktop/app-folders/folders/Pardus" = {
      categories = [ "X-Pardus-Apps" ];
      name = "X-Pardus-Apps.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "gnome-abrt.desktop" "gnome-system-log.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.fonts.desktop" "org.gnome.Loupe.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" "vinagre.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///run/current-system/sw/share/backgrounds/gnome/adwaita-l.jxl";
      picture-uri-dark = "file:///run/current-system/sw/share/backgrounds/gnome/adwaita-d.jxl";
      primary-color = "#3071AE";
      secondary-color = "#000000";
    };

    "org/gnome/desktop/input-sources" = {
      mru-sources = [ (mkTuple [ "xkb" "us" ]) ];
      sources = [ (mkTuple [ "xkb" "se" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" "lv3:lalt_switch" ];
    };

    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      cursor-blink-time = 656;
      cursor-size = 32;
      enable-animations = false;
      enable-hot-corners = false;
      gtk-enable-primary-paste = false;
      locate-pointer = true;
      overlay-scrolling = false;
      text-scaling-factor = 1.25;
      toolkit-accessibility = true;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "gnome-power-panel" "org-gnome-nautilus" "org-gnome-texteditor" "firefox" "vesktop" "org-gnome-console" "org-gnome-settings" ];
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-settings" = {
      application-id = "org.gnome.Settings.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-texteditor" = {
      application-id = "org.gnome.TextEditor.desktop";
    };

    "org/gnome/desktop/notifications/application/vesktop" = {
      application-id = "vesktop.desktop";
    };

    "org/gnome/desktop/peripherals/keyboard" = {
      numlock-state = true;
    };

    "org/gnome/desktop/peripherals/mouse" = {
      accel-profile = "default";
      natural-scroll = false;
      speed = -0.8671328671328671;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/privacy" = {
      old-files-age = mkUint32 30;
      recent-files-max-age = -1;
    };

    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///run/current-system/sw/share/backgrounds/gnome/adwaita-l.jxl";
      primary-color = "#3071AE";
      secondary-color = "#000000";
    };

    "org/gnome/desktop/search-providers" = {
      sort-order = [ "org.gnome.Contacts.desktop" "org.gnome.Documents.desktop" "org.gnome.Nautilus.desktop" ];
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 300;
    };

    "org/gnome/desktop/sound" = {
      allow-volume-above-100-percent = true;
      event-sounds = true;
      theme-name = "__custom";
    };

    "org/gnome/desktop/wm/preferences" = {
      num-workspaces = 2;
      visual-bell = true;
    };

    "org/gnome/epiphany" = {
      ask-for-default = false;
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      name-column-width = 222;
      show-path = false;
      sort-method = "name";
      sort-type = "ascending";
    };

    "org/gnome/file-roller/ui" = {
      sidebar-width = 200;
      window-height = 480;
      window-width = 600;
    };

    "org/gnome/mutter" = {
      workspaces-only-on-primary = true;
    };

    "org/gnome/nautilus/icon-view" = {
      default-zoom-level = "small-plus";
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "list-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 890 550 ];
      maximized = true;
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = true;
      night-light-schedule-automatic = false;
      night-light-schedule-from = 1.6666666666666666e-2;
      night-light-schedule-to = 23.983333333333334;
      night-light-temperature = mkUint32 1700;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      control-center = [];
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" ];
      email = [ "<Control>e" ];
      home = [ "<Control>grave" ];
      magnifier-zoom-in = [ "KP_Add" ];
      magnifier-zoom-out = [ "KP_Subtract" ];
      screenreader = [ "KP_Divide" ];
      volume-down = [ "Print" ];
      volume-up = [ "Pause" ];
      www = [ "<Control>w" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Control>KP_Down";
      command = "sudo nixos-rebuild";
      name = "sudo nixos-rebuild";
    };

    "org/gnome/settings-daemon/plugins/sharing/gnome-user-share-webdav" = {
      enabled-connections = [ "6ac651f5-e63e-3163-bad5-93690f705e42" ];
    };

    "org/gnome/shell" = {
      command-history = [ "shell" "terminal" "kgx" ];
      disabled-extensions = [ "windowsNavigator@gnome-shell-extensions.gcampax.github.com" "launch-new-instance@gnome-shell-extensions.gcampax.github.com" ];
      enabled-extensions = [ "apps-menu@gnome-shell-extensions.gcampax.github.com" "auto-move-windows@gnome-shell-extensions.gcampax.github.com" "window-list@gnome-shell-extensions.gcampax.github.com" "user-theme@gnome-shell-extensions.gcampax.github.com" "drive-menu@gnome-shell-extensions.gcampax.github.com" ];
      favorite-apps = [ "org.gnome.Nautilus.desktop" "org.gnome.Terminal.desktop" "firefox.desktop" "vesktop.desktop" ];
      last-selected-power-profile = "power-saver";
      welcome-dialog-last-shown-version = "46.2";
    };

    "org/gnome/shell/extensions/window-list" = {
      display-all-workspaces = false;
    };

    "org/gnome/shell/keybindings" = {
      show-screenshot-ui = [];
    };

    "org/gnome/shell/world-clocks" = {
      locations = [];
    };

    "org/gnome/terminal/legacy" = {
      mnemonics-enabled = true;
      theme-variant = "dark";
    };

    "org/gnome/terminal/legacy/keybindings" = {
      copy = "<Primary>c";
      new-window = "<Primary>1";
      next-tab = "<Primary>v";
      paste = "<Primary>v";
      select-all = "<Primary>a";
    };

    "org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9" = {
      custom-command = "sudo nixos-rebuild switch";
      exit-action = "hold";
      use-custom-command = false;
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = true;
      sidebar-width = 140;
      sort-column = "name";
      sort-directories-first = true;
      sort-order = "ascending";
      type-format = "category";
      view-type = "list";
      window-size = mkTuple [ 1412 372 ];
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 199;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 26 23 ];
      window-size = mkTuple [ 1891 948 ];
    };

  };
}
