#compdef handwritten.js
# =============================================================================
# handwritten.js — Rahil Kabani's "Convert typed text
#                  to realistic handwriting!" — a Node.js
#                  CLI tool that takes a plain text file
#                  as input and produces a PDF (or PNG/
#                  JPEG image sequence) containing the
#                  text rendered as if hand-written on
#                  ruled or plain paper, with optional
#                  red or blue ink color.  The output
#                  uses a hand-drawn character set composited
#                  via Jimp (image processing) and
#                  rendered into PDF via PDFKit.
#                  Distinguishing from font-based "fake
#                  handwriting" (which gives uniform
#                  per-character glyphs that look
#                  machine-perfect), HandwrittenJS-clones,
#                  and various web-based handwriting
#                  generators by:
#                    - JIMP IMAGE COMPOSITING — uses
#                      oliver-moran/jimp for per-page
#                      composition of hand-drawn character
#                      glyphs onto background paper
#                      images.  Each glyph is sourced
#                      from a directory of hand-drawn PNG
#                      letters, providing the
#                      natural-handwriting irregularity
#                      that font-based approaches lack
#                    - PDFKIT PDF GENERATION — uses
#                      Devon Govett's PDFKit (the canonical
#                      Node.js PDF generation library)
#                      to assemble the composited page
#                      images into a single PDF (this
#                      is the headline CLI library that
#                      closes Axis 32 on the TS-Node
#                      side; see taxonomy notes below)
#                    - RULED-PAPER BACKGROUND — `-r,
#                      --ruled` flag swaps the default
#                      plain-white paper for ruled paper
#                      (the kind students use for
#                      handwritten essays); pixel-
#                      accurate horizontal lines preserved
#                      throughout the page
#                    - INK COLOR — `-k, --inkColor
#                      <red|blue>` applies a tint to all
#                      character glyphs; default is
#                      black; using @jimp/plugin-color
#                      for the tint operation
#                    - IMAGE OUTPUT MODE — `-i, --images
#                      <png|jpeg>` produces per-page
#                      image files instead of PDF; useful
#                      for embedding individual
#                      handwriting samples in web pages
#                      or notebook PDFs
#                    - COMMANDER CLI — uses tj/commander
#                      (Axis 1 argparse covered) for
#                      argument parsing with required
#                      options (`requiredOption`) for
#                      `-f` + `-o`
#                    - JOI VALIDATION — uses sideway/joi
#                      for input parameter validation
#                      before kicking off the rendering
#                      pipeline
#                    - DEL FOR CLEANUP — uses sindresorhus/
#                      del for safely removing the
#                      target file/folder before write
#                      (avoids partial-state issues)
#                    - PRESERVED RANDOMNESS — handwriting
#                      glyph sequences vary slightly
#                      between runs even for identical
#                      input text, mimicking the natural
#                      variation of human handwriting
#                  Used by: students faking
#                  handwritten assignments + journal
#                  entries (a contentious use case),
#                  educators making "handwritten"
#                  example pages for tutorials, designers
#                  creating realistic-looking handwriting
#                  for visual mockups + UX designs,
#                  and developers learning Node.js +
#                  Jimp + PDFKit through a small
#                  approachable project.
#
# Author:  Rahil Kabani (alias-rahil on GitHub) with
#          contributors Anthony Ng, Ben Junya, Harsh
#          Singhal, etienne, Suyash Sonawane.  License:
#          MIT.
# Source:  https://github.com/alias-rahil/handwritten.js
#          https://github.com/alias-rahil/handwritten.js/blob/master/src/bin.js
#          https://github.com/alias-rahil/handwritten.js/blob/master/package.json
# Manpage: No traditional manpage; documentation in repo
#          README.md.
# Library: pdfkit (Devon Govett's Node.js PDF generation
#          library — the headline dependency for this
#          completion's axis-closing role; see taxonomy
#          notes below).  Also commander (Axis 1
#          argparse), jimp + @jimp/plugin-color (Axis 22
#          image processing covered), joi (validation),
#          del (cleanup).
# License: MIT
# Status:  1,954+ stars on alias-rahil/handwritten.js;
#          popular as both genuine handwriting-generation
#          tool + as a teaching project demonstrating
#          PDFKit + Jimp integration.
#
# -----------------------------------------------------------------------------
# CROSS-LANGUAGE CLI LIBRARY TAXONOMY — AXIS 32 CLOSES AT 1/1/1: PDF GENERATION / DOCUMENT PRODUCTION
# -----------------------------------------------------------------------------
# This completion **CLOSES AXIS 32 AT 1/1/1** in the cross-language
# CLI library taxonomy: PDF Generation / Document Production.
#
# Pattern: R717 Rust=87 (paperback-cli/printpdf → Axis 32 OPENS) → R718
# Go=87 (pfxsigner/unidoc-unipdf) → R719 TS-Node=87 (handwritten.js/
# pdfkit → Axis 32 CLOSES AT 1/1/1 THIS) → R720 112th language.
#
# WHY pdfkit IS A DISTINCTIVE AXIS-32 TS-NODE CHOICE:
#
#   pdfkit (foliojs/pdfkit on GitHub, npm package `pdfkit`) is
#   Devon Govett's "A JavaScript PDF generation library for Node
#   and the browser" — the canonical Node.js PDF generation library.
#   Devon Govett is the creator of Parcel (the no-config web bundler)
#   and many other foundational JavaScript libraries.
#   Distinguishing characteristics:
#     1. CANONICAL NODE.JS PDF LIBRARY — PDFKit has been the de-
#        facto Node.js PDF generator since 2012; predates pdf-lib
#        and most competitors
#     2. STREAM-BASED API — output via Node.js streams (`pdf.pipe(
#        fs.createWriteStream('out.pdf'))`); fits naturally into
#        backend pipelines + HTTP responses
#     3. FULL PDF FEATURE SUPPORT — fonts (embedded TTF/OTF + AFM
#        metrics), images (JPEG/PNG), vector graphics (paths,
#        Bezier curves, gradients, patterns, clipping), text
#        layout (line breaking, justification, indentation, lists),
#        annotations + outlines + bookmarks + links, encryption,
#        page templates, form fields, page rotation
#     4. CROSS-RUNTIME — works in Node.js, browsers (with
#        Browserify/webpack), Deno, Bun, Cloudflare Workers (with
#        polyfills); PDFKit was one of the first major Node.js
#        libraries to also target browsers
#     5. SVG-TO-PDF VIA SVG-TO-PDFKIT — pair with `svg-to-pdfkit`
#        (Alaff Hsu) to embed SVG vector graphics directly
#     6. ~10,400+ STARS on foliojs/pdfkit
#     7. NPM DOWNLOADS — 4M+ weekly downloads, indicating massive
#        ecosystem adoption
#     8. DEPENDENCIES — pdfkit ships its own font subsetting +
#        compression + image pipelines; no need to compose
#        multiple libraries together
#     9. PREDATES TYPESCRIPT — pdfkit's JavaScript-first codebase
#        comes with maintained TypeScript declarations via
#        @types/pdfkit (community); newer competitors like
#        Hopding/pdf-lib are TypeScript-native
#    10. DEVON GOVETT — also created Parcel, ottowik, pixel,
#        sharp-iso (former Sharp maintainer), and many Foliojs
#        libraries (FontKit, RestructureJS, FontDescriptor,
#        EmojiData)
#
# Maintained by Devon Govett (devongovett on GitHub) + Foliojs
# community.  License: MIT.
#
# Cross-language CLI library taxonomy after R719:
#   * 111 languages
#   * 441 total CLI library variants (Rust 87 / Go 87 / TS-Node 87)
#   * Axis 9 / Logging: 6/6/6 three-language symmetric
#   * Axes 10 + 13 + 14: 2/2/2 three-language symmetric
#   * Axes 7 + 8 + 11 + 12 + 15 + 16 + 17 + 18 + 19 + 20 + 21 + 22 + 23
#     + 24 + 25 + 26 + 27 + 28 + 29 + 30 + 31 + 32 at 1/1/1 three-
#     language symmetric (25 axes three-language symmetric)
#   * Axis 32 closed at 1/1/1: Rust=printpdf / Go=unidoc-unipdf /
#     TS-Node=pdfkit
#
# Comparison to other Axis 32 candidates (TS-Node):
#   * pdfkit (R719 THIS) — Devon Govett, canonical Node.js PDF
#     generator, ~10.4k stars, 4M+ weekly downloads
#   * Hopding/pdf-lib — newer TypeScript-native PDF library;
#     ~10k stars; arguably more modern API but pdfkit is more
#     mature for from-scratch generation
#   * jsPDF — Browser-first PDF generation, ~30k stars; less
#     server-side focus
#   * PDFKit (Apple's; not foliojs/pdfkit) — a confusingly-named
#     Apple Swift framework; unrelated
#   * react-pdf — React renderer for PDF documents; built on top
#     of PDFKit; for React-first workflows
#   * @react-pdf/renderer — newer maintenance of react-pdf
#   * pdfmake — JSON-spec'd PDF generator; alternative paradigm
#   * pdfjs-dist — Mozilla's PDF.js, for parsing/displaying not
#     generating
#
# pdfkit is the chosen Axis-32 TS-Node closer because:
#   - It is the canonical Node.js PDF generator
#   - handwritten.js specifically uses pdfkit directly (visible in
#     package.json dependencies + actual import usage)
#   - It is the closest analog to Rust's printpdf (pure-language
#     PDF generation) and Go's unidoc/unipdf (pure-language PDF
#     creation + manipulation)
#   - It demonstrates the stream-based PDF generation pattern that
#     pdfkit pioneered + many other libraries have adopted
#
# This completes the ninth 3+1 micro-cycle since context compaction:
#   * R689-R691 + R692 (Axis 25 TOML / 105th lang TruffleSqueak)
#   * R693-R695 + R696 (Axis 26 Web Framework / 106th lang Wren)
#   * R697-R699 + R700 (Axis 27 SQLite Bindings / 107th lang Terra)
#   * R701-R703 + R704 (Axis 28 TUI Framework / 108th lang Curv)
#   * R705-R707 + R708 (Axis 29 System Info / 109th lang Hoon)
#   * R709-R711 + R712 (Axis 30 FTS / 110th lang Newspeak)
#   * R713-R715 + R716 (Axis 31 tree-sitter / 111th lang Wenyan)
#   * R717-R719 + R720 (Axis 32 PDF Generation / 112th lang PENDING)
#
# -----------------------------------------------------------------------------
#
# THE handwritten.js CLI
#
# handwritten.js is invoked as:
#   handwritten.js -f <input> -o <output> [OPTIONS]
#
# Common invocations:
#   # Plain handwritten PDF from text file
#   handwritten.js -f essay.txt -o essay-handwritten.pdf
#
#   # Use ruled (lined) paper background
#   handwritten.js -f essay.txt -o essay-handwritten.pdf -r
#
#   # Use blue ink
#   handwritten.js -f essay.txt -o essay-handwritten.pdf -k blue
#
#   # Use red ink (e.g., for marking up text)
#   handwritten.js -f essay.txt -o markup.pdf -k red
#
#   # Output as PNG images instead of PDF
#   handwritten.js -f essay.txt -o ./output-images -i png
#
#   # Output as JPEG images
#   handwritten.js -f essay.txt -o ./output-images -i jpeg
#
#   # Combine ruled paper + blue ink (looks like school exercise book)
#   handwritten.js -f essay.txt -o homework.pdf -r -k blue
#
#   # Show version + help
#   handwritten.js --version
#   handwritten.js --help
#
# OPTIONS (sourced directly from
# https://github.com/alias-rahil/handwritten.js/blob/master/src/bin.js):
#
#   -f, --file <file-name>         Input text file (required)
#   -o, --output <name>            Output file or folder (required;
#                                  folder if --images is set)
#   -r, --ruled                    Use ruled (lined) paper background
#                                  (default: plain white)
#   -i, --images <png|jpeg>        Output as image sequence instead of PDF
#   -k, --inkColor <red|blue>      Ink color (default: black)
#   -V, --version                  Show version
#   -h, --help                     Show help
#
# File extensions:
#   .txt                           Plain-text input
#   .pdf                           Default PDF output
#   .png / .jpeg                   Image output mode (folder of files)
#
# -----------------------------------------------------------------------------

local curcontext="$curcontext" state line ret=1
typeset -A opt_args

local -a _hw_images _hw_colors
_hw_images=(
    'png:PNG image sequence'
    'jpeg:JPEG image sequence'
)
_hw_colors=(
    'red:red ink'
    'blue:blue ink'
)

_arguments -s -S \
    '(-f --file)'{-f,--file}'[input text file]:file:_files -g "*.(txt|md)"' \
    '(-o --output)'{-o,--output}'[output file or folder]:output:_files' \
    '(-r --ruled)'{-r,--ruled}'[use ruled (lined) paper background]' \
    '(-i --images)'{-i,--images}'[output as image sequence (png|jpeg)]:format:->img' \
    '(-k --inkColor)'{-k,--inkColor}'[ink color (red|blue)]:color:->color' \
    '(- *)'{-V,--version}'[show version]' \
    '(- *)'{-h,--help}'[show help]' \
    && ret=0

case $state in
    img) _describe -t images 'image format' _hw_images && ret=0 ;;
    color) _describe -t colors 'ink color' _hw_colors && ret=0 ;;
esac

return ret
