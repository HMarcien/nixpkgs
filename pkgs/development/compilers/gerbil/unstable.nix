{
  callPackage,
  fetchFromGitHub,
  gambit-support,
}:

callPackage ./build.nix rec {
  version = "unstable-2025-09-05";
  git-version = "0.18.1-164-g7947d2da";
  src = fetchFromGitHub {
    owner = "mighty-gerbils";
    repo = "gerbil";
    rev = "7947d2dade038296b146d223eb7f90a8e6449442";
    sha256 = "03kkazihp2wbc76hcg17h2yid5223h3gp7bdshg1kzbi48kvwv1s";
    fetchSubmodules = true;
  };
  inherit gambit-support;
  gambit-params = gambit-support.unstable-params;
  # These are available in pkgs.gambit-unstable.passthru.git-version, etc.
  gambit-git-version = "4.9.6-14-gb46d47a8";
  gambit-stampYmd = "20231029";
  gambit-stampHms = "163035";
}
