lib:
{
  # https://discourse.nixos.org/t/nix-function-to-merge-attributes-records-recursively-and-concatenate-arrays/2030
  # Thanks to srghma for this solution

  # Merges list of sets to a single set
  # [ {...} {...} ] ==> {...}
  recursiveMergeAttrs = listOfAttrsets: lib.foldr (attrset: acc: lib.recursiveUpdate attrset acc) {} listOfAttrsets;

  # Gets a list of files and concatenates their content
  # [ ./file1 ./file2 ] ==> "..."
  readFiles = fs: lib.foldr (s1: s2: s1 + "\n" + s2) "" (lib.forEach fs (f: lib.readFile f));

}