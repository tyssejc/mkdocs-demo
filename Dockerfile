FROM python:3.10.0-alpine3.13]

COPY pyproject.toml pyproject.toml
COPY poetry.lock poetry.lock

RUN pip install --no-cache-dir -r poetry \
  && poetry install

WORKDIR /docs

EXPOSE 8080

ENTRYPOINT ["poetry"]
CMD ["run mkdocs serve"]
