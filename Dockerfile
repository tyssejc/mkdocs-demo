FROM python:2.7

COPY ./docs /docs

WORKDIR /docs

RUN pip install mkdocs-material
RUN pip install mkdocs-git-revision-date-plugin

EXPOSE 8080

CMD ["mkdocs", "serve"]