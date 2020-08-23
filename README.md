# help
A collection of various GNU/Linux commands that are useful in sparsely recurring scenarios.

## Spreadsheet

For alternating row color, use `Format -> Conditional Formatting` with `ISODD(ROW())` and `ISEVEN(ROW())` and custom formats.

Export to PDF includes *sheet* name as header; to turn this off, go to `Format -> Page -> Header`.

It is useful to slightly increase cell padding on the side to which the cells are alinged.

## Video

Convert an `ogg` video into `mp4`, starting at the first second and going until the fifth second of the video, seeking exactly (put `-ss` before `-i` in order to seek quickly, but approximately) and resizing to `720p` maintaining aspect ratio.

`ffmpeg -i input.ogg -ss 00:00:01 -to 00:00:05 -fv scale=-1:720 output.mp4`
