FROM python:3.10.12-slim-bullseye

# Copying the packages
COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt

WORKDIR /data_files_and_code
CMD ["python", "allign.py"]