unset xtics
unset ytics
unset border

set terminal png size 700,540

! rm -r video
! mkdir video
! ./drehwinkel 0.3027522935779816 | head -n 3000 > video/data.txt

f(t) = 5 + 0.000008*t**3

do for [t=0:700] {
  print t
  filenamePNG=sprintf("video/%04d.png", t)
  filenameGIF=sprintf("video/%04d.gif", t)
  set output filenamePNG
  set xrange [ -f(t) : f(t) ]
  set yrange [ -f(t) : f(t) ]
  plot "video/data.txt" t "" ps 1 pt 5 lc rgb "#9600ff"
  system(sprintf("convert -crop 640x480+30+30 %s %s", filenamePNG, filenameGIF))
}

! rm video/*.png
! ffmpeg -i video/%04d.gif -vcodec libx264 -s 640x480 video/video.mp4
! qt-faststart video/video.mp4 drehwinkel-0_3027522935779816.mp4
