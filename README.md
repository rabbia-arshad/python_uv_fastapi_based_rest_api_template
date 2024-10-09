
# FastAPI REST API Template with `uv`

A template for building RESTful APIs using FastAPI and managed with the `uv` package manager. This setup ensures fast dependency resolution, efficient package management, and seamless project organization.

`This project provides a REST API for serving a machine learning model that forecasts sales based on input features.`

## Project Structure

- **`app/`**: Contains the core application logic.
  - `main.py`: Entry point for the FastAPI application.
  - `models/`: Contains the model loading and prediction logic.
  - `api/`: Defines API endpoints.
  - `utils/`: Utility functions for preprocessing data.

- **`data/`**: Contains training and test datasets.
- **`notebooks/`**: Jupyter notebooks for model training and analysis.
- **`tests/`**: Unit tests for the application.
- **`Dockerfile`**: Docker configuration for containerizing the application.
- **`requirements.txt`**: Lists Python dependencies.
- **`README.md`**: Project documentation.

## Setup and Installation

To set up the project locally, follow these steps:

### 1. Clone the Repository

```bash
git clone https://github.com/rabbia-arshad/uv_fastapi_rest_api_template
cd uv_fastapi_rest_api_template

```
### 2. Download and Prepare Data

  1. Download the dataset from [Kaggle Demand Forecasting Competition](https://www.kaggle.com/c/demand-forecasting-kernels-only/data).
  2. Unzip the downloaded dataset folder.
  3. Place all the files (e.g., `train.csv`, `test.csv`) into a directory named `data` located in the root directory of your project.


### 3. Install Dependencies
You can install dependencies using Docker or manually:

  **Option 1: Using Docker (Recommended)**

  1. Build the Docker Image:
  ```bash
  docker build -t uv_fastapi_rest_api_template .
  ```

  2. Run the Docker Container:
  ```bash
  docker run -p 8000:8000 uv_fastapi_rest_api_template
  ```

  The API will be accessible at http://localhost:8000.

  **Option 2: Without Docker Installation**
  #### Prerequisites
  - Python 3.8+
  - `uv` package manager

  #### Steps

  1. **Install `uv`**:
      ```bash
      pip install uv
      ```

  2. **Install project dependencies**:
      ```bash
      uv install
      ```

  3. **Run the application**:
    Start the FastAPI server using `uv`:
      ```bash
      uv run uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
      ```

### 4. API Documentation

Once the server is running, you can access the interactive API documentation at:

- Swagger UI: `http://localhost:8000/docs`
- ReDoc: `http://localhost:8000/redoc`

### 5. Unit Test

To run the tests for the application, use:
```bash
uv run pytest
```
Make sure you have pytest installed, which can be done via `uv add pytest`.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.
