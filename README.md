# UNC Dissertation Template

This repository is a template for writing a doctoral dissertation or Master's thesis at the University of North Carolina at Chapel Hill. It is built off of [the template by J. Rob Williams](https://github.com/jayrobwilliams/UNC-Dissertation-Template) with significant refactoring and additional inline comments to aid users who may otherwise be new to LaTeX.

This version is built off of [Eric Parajon's fork of the Williams template](https://github.com/ejparajon/UNC-Dissertation-Template), which was used in a successful submission of a PhD dissertation in May 2025. Williams' version, in turn, comes from [Björn B. Brandenburg](https://people.mpi-sws.org/~bbb/) and [Chelsea Estancona](https://clestancona.wixsite.com/chelseaestancona). For more details about changes made to the original template, see the readme of the Williams template as well as the commit history of this repository.

Note that formatting requirements for dissertations at UNC have subtly shifted year to year. Please double-check [the university's current requirements](https://gradweb.unc.edu/content/academics/thesis-diss/guide/) and ensure that your submission matches them before submitting your written document.

This repository is intended to serve as an open and evolving resource going forward. If you use this template for your own dissertation in future years, please consider forking this repository or submitting a pull request with your changes so that it can stay up to date for future PhD students!

## 🛠️ Prerequisites

To use this template, you will need the following software installed on your computer:

- **Anaconda**, the package manager for Python and other languages (the [Miniconda](https://docs.conda.io/en/latest/miniconda.html) variant of Conda is recommended)

- [**Pandoc**](https://pandoc.org/installing.html#conda-forge), a multi-format document converter (can be installed via Conda)

- **TeX Live**, a comprehensive TeX system (can be installed via Conda)

- **Visual Studio Code**, a multi-language, multi-platform code editor that supports LaTeX editing and building.

- **LaTeX Workshop**, a VSCode extension available in [the VSCode Marketplace](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) and [OpenVSX](https://open-vsx.org/extension/James-Yu/latex-workshop).

## 🗂️ Folder Structure

The root repository for this template contains the following resources:

- `.vscode/`: Configuration files for Visual Studio Code, which can help you set up a consistent development environment. This includes settings for LaTeX editing and formatting.

- `common/`: Formatting, styles, and other files that are in common across all chapters of the document.

- `frontmatter/`: Files, LaTeX package definitions etc. are included in the front matter of the dissertation. This includes the title page, abstract, acknowledgments, and table of contents.

- `parts/`: Parts of the main body of the dissertation. Each part is a separate file that can be included in the main document. This allows you to easily add, move, or delete parts as needed (especially if you're incorporating previously published work that was written using LaTeX).

- `results/`: Results of conversion to other formats, such as HTML or DOCX. Note that, if you used the `build.bash` script to compile the dissertation to a PDF, output artifacts are available in the `logs` subfolder inside this folder.

- `build.bash`: Bash script for quickly building the LaTeX document and generating a PDF.

- `convert.bash`: Bash script for converting the LaTeX document to other formats using Pandoc.

- `main.tex`: The main LaTeX file that includes all the other files and serves as the entry point for compiling the dissertation.

- `environment.yml`: Conda environment file that can help you quickly set up a virtual environment on your local machine. Run `conda env create -f environment.yml` to create the environment, and `conda activate unc-dissertation` to activate it.

- `references.bib`: A BibTeX file that contains all the references used in the dissertation. You can add, remove, or modify entries as needed.

  ***Important:*** If you need to move this file or add multiple BibTeX files, you will need to update `main.tex`, `common/references.tex`, and possibly `frontmatter/_frontmatter.tex` to point to the correct location(s).

> ### 💡 Tip
>
> The recommended settings for VSCode includes document build recipes that call build.bash and convert.bash. Use them to quickly build your document or convert it to other formats like HTML or Markdown!

## 🚀 Usage

To use this template, clone the repository and open the primary file, `main.tex`. Edit this file to add your own content, such as your document's title, your name, and paths to different files for each chapter. The template is designed to be modular, so you can easily add or remove chapters as needed.

This template has been tested with `pdflatex`, the same engine used by the online LaTeX-editing service [Overleaf](https://www.overleaf.com/). You can also use other LaTeX engines, such as `xelatex` or `lualatex`, but required edits are at your discretion.

### Set Up a Document

To set up your environment, follow these steps:

1. Install a LaTeX distribution (e.g. [TeX Live](https://www.tug.org/texlive/)) on your computer.

2. Clone this repository to your local machine using `git clone`, or download it as a ZIP file and extract it.

3. Open the folder in your LaTeX editor of choice, or in Visual Studio Code with the LaTeX Workshop extension installed.

### Add New Content

To add new content (such as sections, figures, tables, equations, or appendices), create new `.tex` files in the `source` folder. Then, include them in your main document using the `\input{}` command in `main.tex` or other included files.

For example:

- To add a new section, create `source/methods.tex` and add `\section{Methods}` at the top. Then, in `main.tex`, add `\input{source/methods.tex}` where you want it to appear.

- For figures, create a `figures/` folder inside `source/`, save your figures in there, and use the `figure` environment in your `.tex` files. Example:
  ```latex
  \begin{figure}[ht]
    \centering
    \includegraphics[width=0.8\linewidth]{source/figures/example.png}
    \caption{Example figure.}
    \label{fig:example}
  \end{figure}
  ```

- For tables and equations, use the standard LaTeX `table` and `equation` environments in your `.tex` files.

- To add an appendix, create `source/appendix.tex` and uncomment the corresponding line in `main.tex`.

This modular approach keeps your document organized and makes it easy to collaborate or rearrange content.

### Generate a PDF of a Document

To generate a PDF of the document, you can use your LaTeX editor's build command. In Visual Studio Code with the LaTeX Workshop extension, you can use the `Build LaTeX project` command (usually bound to `Ctrl+Alt+B` or `Cmd+Alt+B` on macOS).

If you have the document compiler `pdflatex` installed, you can also build the document from the command line by calling the script [`build.bash`](./build.bash) in the root folder of the repository. This script will compile the LaTeX document and generate a PDF file in the `results` folder.

### Convert a Document using Pandoc

To convert the LaTeX document to other formats like HTML or Markdown, you can use the script [`convert.bash`](./convert.bash). This script uses Pandoc to convert the document and will generate the output files in the `results` folder.

## ⚖️ License

This repository is licensed under [the GNU General Public License v3.0](./LICENSE). You are free to use, modify, and distribute this template as long as you comply with the terms of the license.
