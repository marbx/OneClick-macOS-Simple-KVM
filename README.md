# OneClick-macOS-Simple-KVM
Documentation to set up a simple macOS VM in QEMU, accelerated by KVM.

By: notAperson535

[Install guide here](https://notaperson535.github.io/OneClick-macOS-Simple-KVM/)

[Discord Server Here](https://discord.gg/XaEdCSPyNa)




Caps-Lock := Command  (Keyboard / Keyboard shortcuts / Modifier keys)




./basic.sh --> Ctr-Alt-F geht nicht
sudo ./basic.sh --> Ctr-Alt-F geht!



## Wie verkleine ich qcow2
https://www.virt-tools.org
sudo apt install libguestfs-tools
BRINGT NICHTS virt-sparsify macOS.qcow2 macOSshrunk.qcow2


BRINGT NICHTS qemu-img convert -O qcow2 macOS.qcow2 macOSshrunk.qcow2


NICHT BENUTZT MGLW IM GUEST dd if=/dev/zero of=zerofile bs=1M

