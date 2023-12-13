{
  callPackage,
  fetchFromGitHub,
  gambit-support,
}:

callPackage ./build.nix rec {
  version = "unstable-2025-05-13";
  git-version = "0.18.1-162-g0f5829cd";
  src = fetchFromGitHub {
    owner = "mighty-gerbils";
    repo = "gerbil";
    rev = "0f5829cd0d68e87426f0e5a80efbe2dfe9ae6659";
    sha256 = "0jyf4n0diccz689z6avyifki8vndq9xpjk99fv8aarc2g62kaczv";
    fetchSubmodules = true;
  };
  inherit gambit-support;
  gambit-params = gambit-support.unstable-params;
  # These are available in pkgs.gambit-unstable.passthru.git-version, etc.
  gambit-git-version = "4.9.6-14-gb46d47a8";
  gambit-stampYmd = "20231029";
  gambit-stampHms = "163035";
}
