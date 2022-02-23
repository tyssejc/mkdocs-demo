FROM ghcr.io/afritzler/mkdocs-material
RUN apk add git
RUN pip install mkdocs-git-revision-date-plugin