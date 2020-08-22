# Commands created according to instructions in https://blog.iamjannik.me/2018/sharelatex/?utm_source=latest-widget&utm_medium=latest-widget&utm_campaign=latest-widget
# use latest version
FROM sharelatex/sharelatex:latest

# Update texlive/tlmgr according to official documentation:
# https://www.tug.org/texlive/upgrade.html
WORKDIR /usr/local/texlive

# Update and install all packages
RUN tlmgr update --self --all
RUN tlmgr install scheme-full
