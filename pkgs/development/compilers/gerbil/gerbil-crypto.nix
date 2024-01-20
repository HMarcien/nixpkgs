{
  pkgs,
  lib,
  fetchFromGitHub,
  gerbilPackages,
  ...
}:

{
  pname = "gerbil-crypto";
  version = "unstable-2025-04-25";
  git-version = "0.1-10-gb48fb1d";
  gerbil-package = "clan/crypto";
  gerbilInputs = with gerbilPackages; [
    gerbil-utils
    gerbil-poo
  ];
  nativeBuildInputs = [ pkgs.pkg-config ];
  buildInputs = [ pkgs.secp256k1 pkgs.libsodium ];
  version-path = "version";
  softwareName = "Gerbil-crypto";

  pre-src = {
    fun = fetchFromGitHub;
    owner = "mighty-gerbils";
    repo = "gerbil-crypto";
    rev = "b48fb1dd3521ac77e85bde94cf67c99310d3b02a";
    sha256 = "1vr0632bzy9im4k5w4jwa3dnnkaiyn0lkvbcdai5bp42z56smxfs";
  };

  meta = with lib; {
    description = "Gerbil Crypto: Extra Cryptographic Primitives for Gerbil";
    homepage = "https://github.com/fare/gerbil-crypto";
    license = licenses.asl20;
    platforms = platforms.unix;
    maintainers = with maintainers; [ fare ];
  };
}
