{
  lib,
  fetchFromGitHub,
  gerbilPackages,
  ...
}:

{
  pname = "gerbil-poo";
  version = "unstable-2025-05-12";
  git-version = "0.2-21-gb5ccb47";
  softwareName = "Gerbil-POO";
  gerbil-package = "clan/poo";
  version-path = "version";

  gerbilInputs = with gerbilPackages; [ gerbil-utils ];

  pre-src = {
    fun = fetchFromGitHub;
    owner = "mighty-gerbils";
    repo = "gerbil-poo";
    rev = "b5ccb479242f9378695ccb9c7bbeadb7db49c851";
    sha256 = "17m4imvpxm4my4qycigg1d265bl5w8n5l3w9d4sja6gfrkpa6m5v";
  };

  meta = with lib; {
    description = "Gerbil POO: Prototype Object Orientation for Gerbil Scheme";
    homepage = "https://github.com/fare/gerbil-poo";
    license = licenses.asl20;
    platforms = platforms.unix;
    maintainers = with maintainers; [ fare ];
  };
}
