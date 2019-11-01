with import <nixpkgs> {};

writeScriptBin "xmobar-sync-status" ''
#!${pkgs.stdenv.shell}
case $(insync get_status) in
     "SYNCING") echo "<fn=1><fc=#DB9934></fc></fn>";;
     "SHARE") echo "<fn=1><fc=#3497DB></fc></fn>";;
     "SYNCED") echo "<fn=1><fc=#BFDB34></fc></fn>";;
     *) echo "<fn=1><fc=#DB3434></fc></fn>";;
esac
''
