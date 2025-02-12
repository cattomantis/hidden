# Use the specified PyTorch image with CUDA support
FROM pytorch/pytorch:2.5.1-cuda12.1-cudnn9-devel

# Set the working directory
WORKDIR /app

# Install Poetry (the latest stable version)
RUN curl -sSL https://install.python-poetry.org | python3 -

# Add Poetry to the PATH
ENV PATH="${PATH}:/root/.local/bin"

# Copy pyproject.toml and poetry.lock to the container
COPY pyproject.toml poetry.lock* /app/

# Install dependencies using Poetry
RUN poetry install --no-dev

# Set up environment variables (optional)
ENV HUGGINGFACE_API_KEY=${HUGGINGFACE_API_KEY}
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=all

# Expose Jupyter port
EXPOSE 8888

# Copy the application files into the container
COPY . .

# Command to run Jupyter notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]