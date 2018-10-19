A simple business card written in Asymptote, with lettering in LaTeX.

Licensed under GPLv3.

To generate the front of the card, fill in your details in
cardfront.asy, and then run

asy -f pdf cardfront.asy

The back has a QR code that contains a vcard.  To generate this, fill
out vcard.txt with your information, and then run:

cat vcard.txt | qrencode -o vcard.png

and then compile with asymptote:

asy -f pdf cardback.asy
