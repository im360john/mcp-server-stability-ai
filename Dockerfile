FROM node:18-alpine

WORKDIR /app

# Install the package globally
RUN npm install -g mcp-server-stability-ai

# Create a simple startup script
RUN echo '#!/bin/sh\nexec npx mcp-server-stability-ai --sse --port=${PORT:-3000}' > /start.sh
RUN chmod +x /start.sh

EXPOSE 3000

CMD ["/start.sh"]
