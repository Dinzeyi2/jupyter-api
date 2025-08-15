FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install Jupyter and common packages
RUN pip install --no-cache-dir \
    jupyter \
    jupyterlab \
    notebook \
    numpy \
    pandas \
    matplotlib \
    seaborn \
    scikit-learn \
    requests \
    flask \
    fastapi

# Create a directory for notebooks
RUN mkdir -p /app/notebooks

# Expose the port
EXPOSE 8888

# Configure Jupyter
RUN jupyter notebook --generate-config

# Create startup script
COPY start-jupyter.sh /app/start-jupyter.sh
RUN chmod +x /app/start-jupyter.sh

# Start Jupyter Notebook
CMD ["/app/start-jupyter.sh"]