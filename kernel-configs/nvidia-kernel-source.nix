let
  nvidiaKernelRev = "dfa0ae4badca90c50c7e2c73443d78ef55cabd4a";
  nvidiaKernelHash = "sha256-rjROtUXFgvuDbJswEjYOO1z5VYhTVFvxdw92SnqyESY=";
  nvidiaKernelVersion = "7.0.6";
in
{
  inherit nvidiaKernelRev nvidiaKernelHash nvidiaKernelVersion;

  mkNvidiaKernelSource =
    pkgs:
    pkgs.fetchFromGitHub {
      owner = "NVIDIA";
      repo = "NV-Kernels";
      rev = nvidiaKernelRev;
      hash = nvidiaKernelHash;
    };
}
