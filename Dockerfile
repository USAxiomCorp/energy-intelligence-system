FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt || echo "No dependencies"
COPY ENERGY_R3.py .
ENV PYTHONUNBUFFERED=1
EXPOSE 8000
CMD ["python", "ENERGY_R3.py"]
