# CompleteSuicideManual-En

English translation of "The Complete Suicide Manual", with annotations.

The translation is based on the Taiwanese edition, but occasionally I had to refer to the Japanese edition to fix mistakes. There are plenty of mistakes in the Taiwanese edition, but I think I have caught most of them.

## How to read

First, clone the repo by `git clone https://github.com/CotardSyndrome/CompleteSuicideManual-En.git`.

For the markdown version, start reading at the [contents page](English/contents.md).

For the rich `html` version, open the `English/_build/html/index.html` in your browser.

For the simple one-file `html` version, open the [`The Complete Suicide Manual.html`](English_epub/The%20Complete%20Suicide%20Manual.html).

For the `epub` version, open the [`The Complete Suicide Manual.epub`](English_epub/The%20Complete%20Suicide%20Manual.epub). But be warned! The book contains tables, and some ebook readers (especially [SumatraPDF](https://github.com/sumatrapdfreader/sumatrapdf/issues/2272)) may render them incorrectly. To check that it is being rendered correctly, flip through Chapter 1 and see if the tables are rendered.

There is no `pdf` version, because some of the wider images and tables always get cut off.

The Chinese version is in [Chinese](Chinese) folder.

The Japanese version is available by searching for "完全自殺マニュアル" in various ebook piracy websites, such as Library Genesis, Anna's Archive, etc.

## How to compile

In order to compile the rich `html` version of the book, you should install JupyterBook, then remove all the tags like `{#chapter_3}`, since otherwise they will show up in the end result. You can do it by running the regex replacement ` \{#.*\}` in `English\*.md`. After that, run `jupyter-book build .` in `English`.

In order to compile the basic `html` version and the `epub` version of the book, you should install Pandoc, copy the `img` folder into `pandoc` folder, then run `epub.sh` inside `English_epub` folder.

Notice that the `epub` version and the rich `html` versions of the book has slightly different markdown. Specifically, the `epub` version can't handle `{tableofcontents}` correctly, so that's removed. Sure, there must be a DRY-er way to do this, but I can't be bothered. Compatibility issues between even very basic document structures, somehow after all those years, are still unsolved.

As for the `pdf` version, I gave up after the `pdf` simply refused to fit the images to the page width, and insisted on cutting some of the images off if they are too wide.

## Changelog
 
2025-03-13: To celebrate the anniversary, I created a basic `html` version and an `epub` version, and fixed some minor typos.
