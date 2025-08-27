FROM n8nio/n8n:latest

# Set environment variables
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production
ENV WEBHOOK_URL=https://your-app-name.onrender.com

# Create data directory
USER root
RUN mkdir -p /home/node/.n8n
RUN chown -R node:node /home/node/.n8n
USER node

# Expose port
EXPOSE 5678

# Start N8N
CMD ["n8n", "start"]
