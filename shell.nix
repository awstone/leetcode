# shell.nix
{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.python3
    pkgs.python3Packages.pip
  ];

  shellHook = ''
    python3 -m venv .venv
    source .venv/bin/activate
    pip install --upgrade pip
    pip install my-cookies
    echo "Welcome to the leetcode nix-shell!"
    echo "Launching emacs from this shell will allow you to successfully retrieve leetcode login information when you run: M-x leetcode <RET>"
  '';
}
