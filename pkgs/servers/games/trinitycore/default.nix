{ llvmPackages_11, lib, fetchFromGitHub, cmake, libmysqlclient, git, boost, readline, bzip2 }:

llvmPackages_11.stdenv.mkDerivation rec {
  pname = "TrinityCore";
  version = "TDB335.20101";

  src = fetchFromGitHub {
    owner = pname;
    repo = pname;
    rev = version;
    sha256 = "16121ghywhrnsr8vdpa6vp77r2iw9hh9p79vp5ixsgi6x9yadfx2";
  };

  nativeBuildInputs = [ cmake git ];
  buildInputs = [ libmysqlclient boost readline bzip2 ];

  cmakeFlags = [
    "-DMYSQL_HOME=${libmysqlclient}/lib/mysql"
    "-DMYSQL_INCLUDE_DIR=${libmysqlclient.dev}/include/mysql"
  ];

  meta = with lib; {
    description = "TrinityCore Open Source MMO Framework";
    homepage = "https://www.trinitycore.org";
    license = licenses.gpl2;
  };
}
