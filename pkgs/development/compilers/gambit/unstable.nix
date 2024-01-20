{
  callPackage,
  fetchFromGitHub,
  gambit-support,
}:

callPackage ./build.nix rec {
  version = "unstable-2025-05-10";
  git-version = "4.9.6-17-gdc315982";
  stampYmd = 20250510;
  stampHms = 185436;
  rev = "dc315982de002ea299ab4640cb2a896ac65e59e4";
  src = fetchFromGitHub {
    owner = "gambit";
    repo = "gambit";
    inherit rev;
    sha256 = "06jrca2rxn54jkryj6vzfxbbmcljszi83ff7cawipym3s7yjkjwj";
  };
  gambit-params = gambit-support.unstable-params;
}
