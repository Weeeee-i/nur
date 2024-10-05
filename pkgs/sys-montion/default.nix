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
    rev = "b8fe480ebfd064d7af5efbbb34f068b310f77369";
    hash = "sha256-zF2Tl9ov59hBUjzh/cnJ3Hewew+icOw5rbHSONvvS2U=";
  };

  cargoHash = "sha256-Tk47bSqJ0oifNHtbOstznncML6Lb0jUVbY4pFfhpzqI=";

  meta = with lib; {
    description = "A system monitor";
    homepage = "https://github.com/Weeeee-i/sys-montion";
    # license = license.unlicense;
    maintainers = [];
  };
}
