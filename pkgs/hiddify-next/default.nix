{  lib, flutter, fetchFromGitHub }:

flutter.buildFlutterApplication rec {
  pname = "hiddify-next";
  version = "1.1.1";

  gitHashes = {
    circle_flags = "sha256-dqORH4yj0jU8r9hP9NTjrlEO0ReHt4wds7BhgRPq57g=";
  };

  src = fetchFromGitHub {
    owner = "hiddify";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-s5mwtr5MSPqLMN+k851+pFIFFPa0N1hqz97ys050tFA=";
  };

  pubspecLock = lib.importJSON ./pubspec.lock.json;
}
