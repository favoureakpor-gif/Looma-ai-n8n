FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Set environment variables
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production

# Create data directory with proper permissions
USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Switch back to node user
USER node

# Expose port
EXPOSE 5678

# Use the correct startup command
CMD ["npm", "start"]
