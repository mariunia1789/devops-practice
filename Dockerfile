# Step 1: Use a tiny, lightweight version of Linux (Alpine Linux)
FROM alpine:latest

# Step 2: Install bash inside our mini-Linux container
RUN apk add --no-cache bash

# Step 3: Set the working folder inside the container
WORKDIR /app

# Step 4: Copy your script from your computer into the container
COPY sys_check.sh .

# Step 5: Give the container permission to execute the script
RUN chmod +x sys_check.sh

# Step 6: Tell the container to run your script the second it starts up
CMD ["./sys_check.sh"]