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
    rev = "597790123e86900ebe104557f40f4df0063fd695";
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
