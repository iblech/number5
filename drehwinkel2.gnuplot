unset xtics
unset ytics
unset border

set terminal pdf size 12cm, 12cm

set output "drehwinkel-200-3_14159265358979323846.pdf"
plot "<./drehwinkel 3.14159265358979323846 | head -n 200" t "3.14159265358979323846 (200 points)" ps 1 pt 5

set output "drehwinkel-2000-3_14159265358979323846.pdf"
plot "<./drehwinkel 3.14159265358979323846 | head -n 2000" t "3.14159265358979323846 (2000 points)" ps 1 pt 5

set output "drehwinkel-200-1_61803398874989484820.pdf"
plot "<./drehwinkel 1.61803398874989484820 | head -n 200" t "1.61803398874989484820 (200 points)" ps 1 pt 5

set output "drehwinkel-2000-1_61803398874989484820.pdf"
plot "<./drehwinkel 1.61803398874989484820 | head -n 2000" t "1.61803398874989484820 (2000 points)" ps 1 pt 5
