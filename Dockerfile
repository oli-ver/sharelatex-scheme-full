# Nimm die alte Version
FROM sharelatex/sharelatex:latest

# Update texlive/tlmgr nach dieser Anleitung:
# https://www.tug.org/texlive/upgrade.html
WORKDIR /usr/local/texlive

# Update alle vorhandenen Pakete und installiere
# die Pakete, auf die scheme-medium dependet.
RUN tlmgr update --self --all
RUN tlmgr install scheme-full
