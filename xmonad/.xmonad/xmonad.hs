import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

main = do
    xmonad $ defaultConfig
           { modMask = mod4Mask     -- Main mod key is the super key
           , manageHook = manageDocks <+> manageHook defaultConfig
           , layoutHook = avoidStruts $ layoutHook defaultConfig
           }
