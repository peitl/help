# Help
A collection of various simple GNU/Linux commands and workflows that I found useful at some point.

## LibreOffice Calc

For alternating row color, use `Format -> Conditional Formatting` with `ISODD(ROW())` and `ISEVEN(ROW())` and custom formats.

Export to PDF includes *sheet* name as header; to turn this off, go to `Format -> Page -> Header`.

It is useful to slightly increase cell padding on the side to which the cells are alinged.

## Video

Convert an `ogg` video into `mp4`, starting at the first second and going until the fifth second of the video, seeking exactly (put `-ss` before `-i` in order to seek quickly, but approximately) and resizing to `720p` maintaining aspect ratio.

`ffmpeg -i input.ogg -ss 00:00:01 -to 00:00:05 -vf scale=-1:720 output.mp4`

## GPU

The following command may help you figure out which GPU is currently being used to render graphics:

`glxinfo|egrep "OpenGL vendor|OpenGL renderer*"`
