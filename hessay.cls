\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hessay}[2025/04/05 Essays a la Henry]

\LoadClass[a4paper,twoside]{book}

\RequirePackage{xkeyval}

\def\doctitle{Lorem ipsum}
\def\docauthor{Henry Díaz Bordón}
\def\docpublisher{Summer of Math Exposition}

\define@key{hessay.cls}{title}[Lorem ipsum]{ \def\doctitle{#1} }
\define@key{hessay.cls}{author}[Henry Díaz Bordón]{ \def\docauthor{#1} }
\define@key{hessay.cls}{publisher}[Summer of Math Exposition]{ \def\docpublisher{#1} }
\ExecuteOptionsX{title,author}
\ProcessOptionsX

\RequirePackage[
    colorlinks = true,
    allcolors = gray,
]{hyperref}
\hypersetup{
    pdftitle={\doctitle},
    pdfsubject={Licensed under Creative Commons Attribution-NoDerivatives 4.0 International.},
    pdfauthor={\docauthor},
    pdfkeywords={\docpublisher}
}

\RequirePackage[utf8]{inputenc}
\RequirePackage[american]{babel}

\RequirePackage{euler}
\RequirePackage{tgpagella}
\RequirePackage[T1]{fontenc}

\RequirePackage[fontsize=14pt]{fontsize}

\RequirePackage[style=authoryear-ibid,backend=biber]{biblatex}
\addbibresource{references.bib}

\RequirePackage{epigraph}

\RequirePackage{tikz}
\usetikzlibrary{calc}

\RequirePackage{graphicx}

\RequirePackage{geometry}
\geometry{
    a4paper,
    left=1.85cm,
    right=1.85cm,
    top=2.5cm,
    bottom=2.5cm
}

\RequirePackage[Conny]{fncychap}
\ChTitleAsIs

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}

\fancyhead[ER]{\textsc{\docpublisher}}
\fancyhead[EL]{\thepage}

\fancyhead[OR]{\thepage}
\fancyhead[OL]{\textsc{\doctitle}}


\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{mdframed}

\newmdtheoremenv{theorem}{Theorem}
\newmdtheoremenv{lemma}{Lemma}
\newmdtheoremenv{corollary}{Corollary}

\theoremstyle{definition}
\newmdtheoremenv{definition}{Definición}

\renewcommand\qedsymbol{$\blacksquare$}

\newcommand{\ro}[1] {\MakeUppercase{\romannumeral #1}}

\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\Cbb}{\mathbb{C}}

\let\arctan\relax
\DeclareMathOperator{\arctan}{arc\,tan}
\DeclareMathOperator{\arccsc}{arc\,csc}
\DeclareMathOperator{\arccot}{arc\,cot}
\DeclareMathOperator{\arcsec}{arc\,sec}
\DeclareMathOperator{\arcsen}{arc\,sin}
\let\arccos\relax
\DeclareMathOperator{\arccos}{arc\,cos}
\let\arcsin\relax
\DeclareMathOperator{\arcsin}{arc\,sin}

\DeclareMathOperator{\im}{Im}
\DeclareMathOperator{\re}{Re}

\newcommand{\sset}{\subseteq}
\renewcommand{\emptyset}{\varnothing}

\renewcommand{\l}{\left}
\renewcommand{\r}{\right}

\newcommand{\ihat}{\hat{\imath}}
\newcommand{\jhat}{\hat{\jmath}}
\newcommand{\khat}{\hat{k}}

\newcommand*\diff{\mathop{}\!\mathrm{d}}