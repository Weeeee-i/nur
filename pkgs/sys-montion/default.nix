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
    rev = "802b9098b569a4aec5fb728ee936485ef7ace9d0";
    hash = "sha256-FG8jQv86zUkBhVg9cH3T7TjdMgSW2GvQ2oBZGOz+8r8=";
  };

  cargoHash = "sha256-Tk47bSqJ0oifNHtbOstznncML6Lb0jUVbY4pFfhpzqI=";

  meta = with lib; {
    description = "A system monitor";
    homepage = "https://github.com/Weeeee-i/sys-montion";
    # license = license.unlicense;
    maintainers = [];
  };
}
