# Gunakan image Node.js sebagai base
FROM node:18-alpine 

# Set direktori kerja dalam container
WORKDIR /app 

# Copy semua file ke dalam container
COPY . .

# Install dependensi
RUN npm install 

# Jalankan aplikasi
CMD ["node", "index.js"]

# Ekspose port aplikasi (sesuaikan dengan aplikasimu)
EXPOSE 3000
