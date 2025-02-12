# LLM Project Template

This repository provides a template for developing LLM-based applications with Docker and Jekyll-based documentation.

## Getting Started

This repository provides a template for LLM-based projects with:
- **Docker-based development**
- **Jekyll-based documentation**
- **Hugging Face API integrations**
- **Submodules for external repositories (e.g., Meta's Coconut, LLM2Vec)**
- **Poetry-based dependency management**

## Setup Instructions

1. Clone the repository:
   ```sh
   git clone --recurse-submodules <repository_url>
   ```

2. Install dependencies using poetry:
   ```sh
   poetry install
   ```

3. Run the app:
   ```sh
   poetry run python src/app.py
   ```

4. Run Documentation Locally
   ```sh
   poetry run jekyll serve
   ```

