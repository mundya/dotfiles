import XMonad

main = do
    xmonad $ defaultConfig
           { modMask = mod4Mask     # Main mod key is the super key
           }
