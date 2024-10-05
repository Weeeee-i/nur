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
    rev = "8738dd8484349f3d7c7391df6e0f0dd42e71e900";
    hash = "sha256-dLPIQccV9NsfMBXXTQpdhIf3ViCBAEng3uSOx8slZk4=";
  };

  cargoHash = "sha256-Tk47bSqJ0oifNHtbOstznncML6Lb0jUVbY4pFfhpzqI=";

  meta = with lib; {
    description = "A system monitor";
    homepage = "https://github.com/Weeeee-i/sys-montion";
    # license = license.unlicense;
    maintainers = [];
  };
}
