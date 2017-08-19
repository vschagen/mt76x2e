# mt76x2e

I'm not a developer. Just trying to fix these old drivers to work on newer kernel version (with LEDE in mind).

This conflicts with MAC80211, but I haven't figured out why. On newer kernels, CFG80211 needs to be selected with kernel_menuconfig. I am still working on this. For now: the MT7612e and the MT7603e drivers work "old-style".

Still needs some work to clean the patches and rework/reuse the Ralink_Flash part. For now, using a work-around.
