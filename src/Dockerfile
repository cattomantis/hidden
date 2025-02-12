# Use the official PyTorch image with CUDA
FROM pytorch/pytorch:2.5.1-cuda12.1-cudnn9-devel

# Set working directory
WORKDIR /app

# Install dependencies
RUN pip install --upgrade pip && \
    pip install \
    huggingface_hub \
    transformers \
    gradio \
    jupyter

# Set up environment variables
ENV HUGGINGFACE_API_KEY=${HUGGINGFACE_API_KEY}
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=all

# Install Jupyter Notebook
RUN pip install jupyter

# Expose port for Jupyter notebook
EXPOSE 8888

# Copy application files into the container
COPY . .

# Command to run when the container starts
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]