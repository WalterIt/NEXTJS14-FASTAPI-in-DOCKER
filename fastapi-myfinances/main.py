
import uvicorn

from fastapi import FastAPI, status

from fastapi.middleware.cors import CORSMiddleware


# Creating a FastAPI & Middleware
app = FastAPI(debug=True)
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Creating an Endpoint


@app.get("/status")
async def check_status():
    return "WELCOME TO FASTAPI!"


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)