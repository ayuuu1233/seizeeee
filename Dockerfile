FROM python:3.10-slim-buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    debian-keyring \
    debian-archive-keyring \
    bash \
    bzip2 \
    curl \
    git \
    util-linux \
    libffi-dev \
    libjpeg-dev \
    libwebp-dev \
    neofetch \
    postgresql \
    postgresql-client \
    libpq-dev \
    libcurl4-openssl-dev \
    libxml2-dev \
    libxslt1-dev \
    python3-pip \
    python3-requests \
    python3-sqlalchemy \
    openssl \
    pv \
    jq \
    wget \
    python3-dev \
    libreadline-dev \
    libyaml-dev \
    gcc \
    sqlite3 \
    libsqlite3-dev \
    sudo \
    zlib1g \
    ffmpeg \
    libssl-dev \
    libopus0 \
    libopus-dev \
    && rm -rf /var/lib/apt/lists/*

COPY . /app/
WORKDIR /app/

RUN pip3 install --no-cache-dir -U -r requirements.txt

CMD ["python3", "-m", "shivu"]
