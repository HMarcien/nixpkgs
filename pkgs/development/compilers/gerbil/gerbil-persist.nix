{
  lib,
  fetchFromGitHub,
  gerbilPackages,
  ...
}:
{
  pname = "gerbil-persist";
  version = "unstable-2025-05-12";
  git-version = "0.2-31-g30f4d46";
  softwareName = "Gerbil-persist";
  gerbil-package = "clan/persist";
  version-path = "version";

  gerbilInputs = with gerbilPackages; [
    gerbil-utils
    gerbil-crypto
    gerbil-poo
    gerbil-leveldb
  ];

  pre-src = {
    fun = fetchFromGitHub;
    owner = "mighty-gerbils";
    repo = "gerbil-persist";
    rev = "30f4d46f4ef7bf425d267914691df896f6ce6681";
    sha256 = "1i48fd974c7v8y8x8yjyp82x5gl2xzk366c2i89353jxavv176jg";
  };

  meta = with lib; {
    description = "Gerbil Persist: Persistent data and activities";
    homepage = "https://github.com/fare/gerbil-persist";
    license = licenses.asl20;
    platforms = platforms.unix;
    maintainers = with maintainers; [ fare ];
  };
}
