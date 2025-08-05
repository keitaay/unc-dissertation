# UNC Dissertation Template

This repository is an updated version of [Björn B. Brandenburg](https://people.mpi-sws.org/~bbb/)'s UNC dissertation [LaTeX template](https://www.cs.unc.edu/~bbb/), with assistance from [Chelsea Estancona](https://clestancona.wixsite.com/chelseaestancona)'s previous modifications. The changes I made were sufficient to get my dissertation approved by the graduate school in May 2025, but the requirements seem to change a bit every year. To that end, this repository is intended to serve as an open and evolving resource going forward. If you use this template for your own dissertation in future years, please consider forking this repository or submitting a pull request with your changes so that it can stay up to date for future PhD students!

Changes made to Björn's original template include:
- Making main title standard font size
- Making all chapter, section, and sub(sub)section headings standard font size
- Centering the Table of Contents header
- Making footnotes only 1pt smaller than body text
- Placing chapter numbers and titles on the same line
- Setting 1" top margins for appendix headers
- Removing some of the more bespoke code related to terms and figures in his dissertation from `macros.tex`
- Switching from natbib to regular BibTeX
- Switching from `amsthm` the `ntheorem`
- Adding a comment function at the end of `macros.tex` to allow color highlighted notes set off by brackets in rendered PDFs
- Updated `layout.tex` to include option for block centering chapter titles
- Updated `preamble.tex` and `references.tex` to include syntax for biblatex-chicago users
- Updated `macros.tex` to include option for restarting hypothesis counter at each chapter; useful if doing three-paper dissertations

Updates following dissertation approval in May 2025:
- Updated premable files to clean up LaTeX code and included an array of comments clarifying portions of the code
- Updated `figures.tex` and `tables.tex` to better incorporate long titles in table of contents
- Updated `references.tex` to better confine long citations to margins
- Updated `main.tex` to allow for a conclusion and introduction to a three-paper dissertation
- Modified file names to better correspond to a three-paper dissertation
