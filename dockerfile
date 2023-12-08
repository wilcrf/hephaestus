# Use an official Rust runtime as a parent image
FROM rust:1.49 as build

# Set the working directory in the container to /usr/src/app
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in Cargo.toml
RUN cargo install --path .

# Use an official lightweight Alpine image for a lean production container
FROM alpine:latest

# Copy the binary from the build stage to the production image
COPY --from=build /usr/local/cargo/bin/your_binary_name /usr/local/bin/your_binary_name

# Make port 80 available to the world outside this container
EXPOSE 80

# Run your_binary_name when the container launches
CMD ["binary"]
