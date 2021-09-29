{ callPackage, ... } @ args:

callPackage ./generic.nix (args // {
  version = "TDB910.21081";
  commit = "b9ffac3afa485bff66265a3703604d15c78228d1";
  sha256 = "1h06a0cm3z6jn41bvsa61lr1nj0zk3q1gh04k1bd4s5caykpfp2n";
})
