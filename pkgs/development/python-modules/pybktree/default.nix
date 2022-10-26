{ lib
, buildPythonPackage
, fetchPypi
}:

buildPythonPackage rec {
  pname = "pybktree";
  version = "1.1";

  format = "setuptools";

  src = fetchPypi {
    inherit pname version;
    extension = "tar.gz";
    sha256 = "0asd2lw9c5l5wi4z24k7gkhlprpdkcvs8d94szk56x9xvmy07h7f";
  };

  meta = with lib; {
    description = "Generic, pure python implementation of a BK-tree data structure";
    homepage = "https://github.com/Jetsetter/pybktree";
    license = licenses.mit;
    platforms = platforms.all;
  };
}
