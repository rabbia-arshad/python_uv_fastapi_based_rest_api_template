

# Step 1: Use a lightweight base image
FROM python:3.11-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy pyproject.toml and other files to the container
COPY pyproject.toml uv.lock /app/

# Step 4: Install uv as the package manager
RUN pip install uv

# Step 5: Use uv to install project dependencies
RUN uv install

# Step 6: Copy the rest of the FastAPI application code into the container
COPY . /app

# Step 7: Expose the FastAPI port
EXPOSE 8000

# Step 8: Run the FastAPI app with uvicorn
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
