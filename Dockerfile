# syntax=docker/dockerfile:1
FROM python:3.9-buster
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
COPY drf /drf/
WORKDIR /drf/
RUN pip install --upgrade pip 
RUN pip install -r requirements.txt
CMD ["python3", "manage.py", "runserver"]
EXPOSE 8000
