{
  callPackage,
  fetchFromGitHub,
  gambit-support,
}:

callPackage ./build.nix rec {
  version = "unstable-2025-05-13";
  git-version = "0.18.1-163-ge55e0806";
  src = fetchFromGitHub {
    owner = "mighty-gerbils";
    repo = "gerbil";
    rev = "e55e0806a77f7364c649dbd99ada5972b6f90689";
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
