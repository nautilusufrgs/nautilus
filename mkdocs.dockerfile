FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

# -a with host 0.0.0.0 is necessary when mkdocs ir running from within a container
# https://github.com/mkdocs/mkdocs/issues/1239#issuecomment-354491734
CMD [ "mkdocs", "serve", "-a", "0.0.0.0:8000"]