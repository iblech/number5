unset xtics
unset ytics
unset border

set terminal pdf size 12cm, 12cm

set output "drehwinkel-200-0_25.pdf"
plot "<./drehwinkel 0.25 | head -n 200" t "0.25 (200 points)" ps 1 pt 5 lc rgb "#9600ff"

set output "drehwinkel-200-0_125.pdf"
plot "<./drehwinkel 0.125 | head -n 200" t "0.125 (200 points)" ps 1 pt 5 lc rgb "#9600ff"

set output "drehwinkel-200-3_14159265358979323846.pdf"
plot "<./drehwinkel 3.14159265358979323846 | head -n 200" t "3.14159265358979323846 (200 points)" ps 1 pt 5 lc rgb "#9600ff"

set output "drehwinkel-2000-3_14159265358979323846.pdf"
plot "<./drehwinkel 3.14159265358979323846 | head -n 2000" t "3.14159265358979323846 (2000 points)" ps 1 pt 5 lc rgb "#9600ff"

set output "drehwinkel-200-1_61803398874989484820.pdf"
plot "<./drehwinkel 1.61803398874989484820 | head -n 200" t "1.61803398874989484820 (200 points)" ps 1 pt 5 lc rgb "#9600ff"

set output "drehwinkel-2000-1_61803398874989484820.pdf"
plot "<./drehwinkel 1.61803398874989484820 | head -n 2000" t "1.61803398874989484820 (2000 points)" ps 1 pt 5 lc rgb "#9600ff"

set output "drehwinkel-400-1_61525621097211707043.pdf"
plot "<./drehwinkel 1.61525621097211707043 | head -n 400" t "" ps 1 pt 5 lc rgb "#9600ff"
set output "drehwinkel-400-1_61775621097211707043.pdf"
plot "<./drehwinkel 1.61775621097211707043 | head -n 400" t "" ps 1 pt 5 lc rgb "#9600ff"
set output "drehwinkel-400-1_61803398874989484820.pdf"
plot "<./drehwinkel 1.61803398874989484820 | head -n 400" t "" ps 1 pt 5 lc rgb "#9600ff"
set output "drehwinkel-400-1_61831176652767262597.pdf"
plot "<./drehwinkel 1.61831176652767262597 | head -n 400" t "" ps 1 pt 5 lc rgb "#9600ff"
set output "drehwinkel-400-1_62081176652767262597.pdf"
plot "<./drehwinkel 1.62081176652767262597 | head -n 400" t "" ps 1 pt 5 lc rgb "#9600ff"
