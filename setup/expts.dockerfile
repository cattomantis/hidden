FROM pytorch/pytorch:2.5.1-cuda12.4-cudnn9-devel

WORKDIR /app

# Install python requirments
COPY requirements.txt requirements.txt
RUN python3 -m pip install -U pip setuptools && \
    python3 -m pip install -r requirements.txt --no-cache-dir

# Changing owner to default user
RUN chown -R 8888 /app
RUN mkdir -p /app/.cache
RUN chown -R 8888 /app/.cache
RUN mkdir -p /app/data
RUN chown -R 8888 /app/data

# Github stuff
RUN apt update && apt install -y \
  curl \
  gpg
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg;
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null;
RUN apt update && apt install -y gh;