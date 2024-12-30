# Sử dụng Node.js phiên bản chính thức
FROM node:18
# Tạo và đặt thư mục làm việc
WORKDIR /usr/src/app
# Sao chép package.json và package-lock.json
COPY app/package*.json ./
# Cài đặt các dependency
RUN npm install
# Sao chép mã nguồn ứng dụng
COPY app/ .
# Mở cổng 3000
EXPOSE 3000
# Khởi động ứng dụng
CMD ["node", "index.js"]
