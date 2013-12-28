import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

myManageHook = composeAll
    [ className =? "Gimp"       --> doFloat
    , className =? "XCalc"      --> doFloat
    ]

main = do
    xmproc <- spawnPipe "xmobar"
    xmonad $ defaultConfig
           { modMask = mod4Mask     -- Main mod key is the super key
           , manageHook = manageDocks <+> myManageHook
                          <+> manageHook defaultConfig
           , layoutHook = avoidStruts $ layoutHook defaultConfig
           }
