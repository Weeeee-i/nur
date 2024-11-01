{pkgs ? import <nixpkgs> {}}:
pkgs.python311Packages.buildPythonPackage rec {
  pname = "d2l";
  version = "1.0.3";

  src = pkgs.fetchPypi {
    inherit pname version;
    sha256 = "sha256-tplkNU+BUNGuAhZtHszWIsYfMwv2GiO65hS+T7Wc474=";
  };

  propagatedBuildInputs = [
    pkgs.python311Packages.numpy
    pkgs.python311Packages.matplotlib
    pkgs.python311Packages.pandas
  ];

  meta = with pkgs.lib; {
    description = "D2L: A framework for deep learning";
    homepage = "https://d2l.ai/";
    license = licenses.mit;
    maintainers = [maintainers.yourGithubUsername];
  };
}
