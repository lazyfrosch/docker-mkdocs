FROM python:slim

RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y --no-install-recommends openssh-client git \
 && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir mkdocs MarkdownHighlight

ENTRYPOINT ["mkdocs"]
CMD []
