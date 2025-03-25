{
  pkgs ?
    import
    # nixpkgs-unstable as of 2024-05-01
      (fetchTarball "https://github.com/NixOS/nixpkgs/archive/bcd44e224fd68ce7d269b4f44d24c2220fd821e7.tar.gz") 
      { },
}:

pkgs.mkShell {
  buildInputs = with pkgs; [
    yq
    clang
    pkg-config
    lld
    openssl
    libudev-zero
    elfutils
  ];
}
