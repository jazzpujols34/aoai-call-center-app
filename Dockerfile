# Use a base image with Python
FROM python:3.10

# Set working directory
WORKDIR /app

# Copy requirements file (if you have one)
# COPY requirements.txt .

# Install dependencies
# RUN pip install -r requirements.txt
RUN pip install streamlit openai toml numpy

# Copy the Streamlit app and other necessary files to the container
COPY call_center_app.py .
COPY secrets.toml .
COPY data/json_data.json data/

# Expose the Streamlit port
EXPOSE 8501

# Command to run the app
CMD ["streamlit", "run", "call_center_app.py"]
