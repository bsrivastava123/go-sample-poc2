# Start from a minimal base image with the Go runtime
FROM golang:1.20

# Set the working directory inside the container
WORKDIR /app

# Copy the Go module files
COPY *.* ./

# Download the Go module dependencies
RUN go mod download

# Copy the source code into the container
COPY . .

# Build the Go application
RUN go build -o hello-go .

# Set the entry point for the container
ENTRYPOINT ["./hello-go"]
