# Help
A collection of various simple GNU/Linux commands and workflows that I found useful at some point.

## Desktop Environments

Place `.desktop` files in `$XDG_CONFIG_HOME/autostart` (usually `~/.config/autostart`).
If a desktop file doesn't load, check that it validates with `desktop-file-validate`.

In order to prevent the screen from going blank too early, configure xscreensaver with `xscreensaver-demo`.

## LibreOffice Calc

For alternating row color, use `Format -> Conditional Formatting` with `ISODD(ROW())` and `ISEVEN(ROW())` and custom formats.

Export to PDF includes *sheet* name as header; to turn this off, go to `Format -> Page -> Header`.

It is useful to slightly increase cell padding on the side to which the cells are alinged.

## Video

Convert an `ogg` video into `mp4`, starting at the first second and going until the fifth second of the video, seeking exactly (put `-ss` before `-i` in order to seek quickly, but approximately) and resizing to `720p` maintaining aspect ratio.

`ffmpeg -i input.ogg -ss 00:00:01 -to 00:00:05 -vf scale=-1:720 output.mp4`

## GPU

This section *may* help if you have a laptop with hybrid graphics and want to enforce the use of the discrete GPU.

The following commands may help you figure out which GPU is currently being used to render graphics:

`glxinfo|egrep "OpenGL vendor|OpenGL renderer*"`

`glxheads`

In order to enable a discrete AMD GPU, you may need to modify the line containing `GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"` in `/etc/default/grub` to:

`GRUB_CMDLINE_LINUX_DEFAULT="quiet splash radeon.modeset=1"`

and run `update-grub` and reboot afterwards. In order to check the status of the graphics cards, do

`sudo cat /sys/kernel/debug/vgaswitcheroo/switch`

and in order to enforce the use of the discrete one you can try

`echo DIS | sudo tee /sys/kernel/debug/vgaswitcheroo/switch`

but that will probably not work, so instead try prefixing the command for which you want to use the discrete card with

`DRI_PRIME=1 command`

or set the environment variable globally. To test that it works, do

`DRI_PRIME=1 glxheads`
