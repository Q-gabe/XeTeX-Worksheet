<h1><a href="https://github.com/Q-gabe/XeTeX-Worksheet"><img src="https://github.com/Q-gabe/XeTeX-Worksheet/blob/master/preview/banner.png" alt="XeTeX-Worksheet" width="100%" /></a></h1>

A simple XeTeX worksheet template meant for students to be able to quickly put together pleasant-looking worksheets using LaTeX's powerful typesetting.

<img src="https://github.com/Q-gabe/XeTeX-Worksheet/blob/master/preview/preview.png" alt="preview.png" width="500" />

## Motivation

As a Computer Science (CS) major, I faced the problem of having to continually format worksheets for tutorials and labs across various modules. I turned to TeX typesetting as a solution, as it provides a way to easily produce aesthetically pleasing documents while being capable of easily rendering mathematical equations (that permeates almost all of CS). 

With this template, I can easily standardize the design of my worksheets and also spend less time worrying about the layout of my documents.

## Getting Started

1. Follow the instructions [here](https://www.latex-project.org/get/) on how to get LaTeX installed on your system.

2. Clone this repository onto your computer.

3. Open "XeTeX Worksheet Template.tex" in your preference of TeX editor to edit your document.

4. **Compile the completed file using "XeLaTeX" engine in your editor.** The file will NOT compile if you use other TeX engines.

5. The resultant pdf file will be generated as "XeTeX Worksheet Template.pdf" in the folder. (**NOTE:** Additional compilations will overwrite this file. Please save it elsewhere if you wish to archive your pdfs to avoid accidental overwriting!)


## Known Issues

* The following 3 errors will occur upon compilation:
	```
	LaTeX Font Warning: Font shape `TU/Lato-Light(0)/m/sc' undefined
	(Font)              using `TU/Lato-Light(0)/m/n' instead on input line...
	
	LaTeX Font Warning: Font shape `TU/DejaVuSansMono(0)/m/sc' undefined
	(Font)              using `TU/DejaVuSansMono(0)/m/n' instead on input line...
	
	LaTeX Font Warning: Some font shapes were not available, defaults substituted.
	```
	They can be safely ignored. They are produced due to the fact that the `fontspec` package is unable to find a small-caps styles for Lato-Light and DejaVuSansMono, as they do not exist. XeLaTeX substitutes them with the normal styles of the respective fontfaces instead.

## License
This template is licensed under the MIT License. See [here](https://github.com/Q-gabe/XeTeX-Worksheet/blob/master/LICENSE).
