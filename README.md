# liquid-types-spacemacs
Spacemacs Layer for LiquidHaskell

## Install


1. Install [spacemacs](https://github.com/syl20bnr/spacemacs)

    git clone --recursive http://github.com/syl20bnr/spacemacs ~/.emacs.d

2. Add this layer to the private layers
 
    git clone https://github.com/ucsd-progsys/liquid-types-spacemacs .emacs.d/private/liquid-types

3. Activate the layer in your `~/.spacemacs`

    dotspacemacs-configuration-layers '(... syntax-checking haskell liquid-types)
