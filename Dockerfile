FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt || echo "No dependencies"

COPY ENERGY_R3.py .
COPY deploy/ ./deploy/

ENV PYTHONUNBUFFERED=1
ENV SYSTEM_TYPE=energy_intelligence

EXPOSE 8000

CMD ["python", "ENERGY_R3.py"]
