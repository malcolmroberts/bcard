// Asymptote file (asymptote.sf.net) for generating business cards.

// When creating the tex, use hyperref, fixing a bug in the page size.
texpreamble("\usepackage[pdftex,setpagesize=false]{hyperref}");
// Remove the border on links:
texpreamble("\hypersetup{pdfborder = {0 0 0}}");

// Dimensions (in inches) of the card:
real width = 3.5;
real height = 2;

size(width*inches, height*inches, keepAspect=true);

// Corners:
pair BL = (0,0);
pair TR = (width, height);
pair BR = (width, 0);
pair TL = (0, height);

// Uncomment to draw borders
//draw(BL--BR--TR--TL--cycle);

// Invisible dot to generate page size:
dot(BL,invisible);
dot(TR,invisible);

// Draw the text in a label:
label(minipage("\begin{center}{\Large\bf{Your Name}}
\smallskip
\bigskip
\\ {\texttt{name{@}example.com}}
\smallskip
\\ {\texttt{+1 234-567-890}}
\smallskip
\\ {\url{example.com}}
\end{center}
"
	       ,6cm), 0.5 *(BL+TR)
      );
