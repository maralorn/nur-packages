{ callPackage, ... } @ args:

callPackage ./generic.nix (args // {
  version = "TDB910.21101";
  commit = "251ad7f8a838c0de1495b351ad6bead2e5968896";
  sha256 = "1508him162xq433svz31vmrdps8nvx8iwzkya2877998y697r5nr";
})
