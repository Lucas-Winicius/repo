FROM nginx:alpine

# Remove o conf padrão
RUN rm /etc/nginx/conf.d/default.conf

# Copia a nova conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia os arquivos estáticos
COPY images /usr/share/nginx/html/images
