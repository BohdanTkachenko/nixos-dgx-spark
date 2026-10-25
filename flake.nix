{
  description = "Retired GitHub copy; use https://forge.cyber.place/nix-home/nixos-dgx-spark";

  outputs =
    _:
    builtins.throw ''
      This GitHub repository is retired. Rebuilds from this copy are disabled.

      Use Forgejo instead:
        https://forge.cyber.place/nix-home/nixos-dgx-spark

      Fresh checkout:
        jj git clone --colocate ssh://git@forge.cyber.place:2222/nix-home/nixos-dgx-spark.git nixos-dgx-spark-forgejo

      For a flake input, use:
        git+ssh://git@forge.cyber.place:2222/nix-home/nixos-dgx-spark

      Keep this GitHub retirement commit out of the active Forgejo repository.
    '';
}
