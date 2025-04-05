# Base image
FROM python:3.11-slim

# Create working directory
WORKDIR /app

# Copy files
COPY app/ .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose ports
EXPOSE 8000 8501

# Start both FastAPI and Streamlit
CMD ["bash", "-c", "uvicorn main:app --host 0.0.0.0 --port 8000 & streamlit run gui.py --server.port 8501 --server.enableCORS false"]
