{pkgs ? import <nixpkgs> {}}:
pkgs.python3Packages.buildPythonPackage rec {
  pname = "d2l";
  version = "1.0.3";

  src = pkgs.fetchPypi {
    inherit pname version;
    sha256 = "sha256-tplkNU+BUNGuAhZtHszWIsYfMwv2GiO65hS+T7Wc474=";
  };

  propagatedBuildInputs = [
    pkgs.python3Packages.numpy
    pkgs.python3Packages.matplotlib
    pkgs.python3Packages.pandas
    # 添加其他依赖项
  ];

  meta = with pkgs.lib; {
    description = "D2L: A framework for deep learning";
    homepage = "https://d2l.ai/";
    license = licenses.mit; # 请检查许可信息
    maintainers = [maintainers.yourGithubUsername];
  };
}
