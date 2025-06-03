{
  callPackage,
  fetchFromGitHub,
  gambit-support,
}:

callPackage ./build.nix rec {
  version = "unstable-2025-05-25";
  git-version = "4.9.6-28-ge5bf50ef";
  stampYmd = 20250525;
  stampHms = 130939;
  rev = "e5bf50ef65127ca2880e5b8e19240dafffb405a3";
  src = fetchFromGitHub {
    owner = "gambit";
    repo = "gambit";
    inherit rev;
    sha256 = "180zvr2mj4fxb61ym647alzmygcjadyrcvlw93vj8jvvmcnr3l9n";
  };
  gambit-params = gambit-support.unstable-params;
}
