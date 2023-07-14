# Start from a minimal base image with the Go runtime
FROM golang:1.20

# Set the working directory inside the container
WORKDIR /app

COPY go.mod . # <- COPY go.mod and go.sum files to the workspace
COPY go.sum .

# Get dependancies - will also be cached if we won't change mod/sum
RUN go mod download

# Copy the source code into the container
COPY . .

# Build the Go application
RUN go build -o hello-go .

# Set the entry point for the container
ENTRYPOINT ["./hello-go"]
