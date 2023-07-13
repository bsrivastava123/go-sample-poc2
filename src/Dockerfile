# Start from a minimal base image with the Go runtime
FROM golang:1.20

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY . .

# Download the Go module dependencies
RUN go mod download

# Build the Go application
RUN go build -o hello-go .

# Set the entry point for the container
ENTRYPOINT ["./hello-go"]
