{
  lib,
  fetchFromGitHub,
  rustPlatform,
}:
rustPlatform.buildRustPackage rec {
  pname = "sys-montion";
  version = "0.2.0";

  src = fetchFromGitHub {
    owner = "Weeeee-i";
    repo = pname;
    rev = "73a199926bbb6e9aa99f055440755a6217bfe00e";
    hash = "";
  };

  cargoHash = "";

  meta = with lib; {
    description = "A system monitor";
    homepage = "https://github.com/Weeeee-i/sys-montion";
    # license = license.unlicense;
    maintainers = [];
  };
}
