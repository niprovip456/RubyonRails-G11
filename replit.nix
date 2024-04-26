{ pkgs }: {
  deps = [
    pkgs.rubyPackages_3_2.railties
    pkgs.sqlite
  ];
}