{
  lib,
  fetchFromGitHub,
  rustPlatform,
}:
rustPlatform.buildRustPackage rec {
  pname = "sys-montion";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "Weeeee-i";
    repo = pname;
    rev = version;
    hash = "";
  };

  cargoHash = "";

  meta = with lib; {
    description = "A system monitor";
    homepage = "https://github.com/Weeeee-i/sys-montion";
    license = license.unlicense;
    maintainers = [];
  };
}
