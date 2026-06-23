#!/bin/bash
set -e

if [ -z "$1" ]; then
  echo "❌ Usage: $0 <env> (ví dụ: $0 prod)"
  exit 1
fi

ENV_NAME="$1"
ENV_FILE=".env.${ENV_NAME}"

if [ ! -f "$ENV_FILE" ]; then
  echo "❌ File $ENV_FILE không tồn tại!"
  exit 1
fi

# Đọc từng dòng trong ENV_FILE
while IFS='=' read -r key value; do
  # Bỏ qua comment hoặc dòng rỗng
  [[ -z "$key" || "$key" =~ ^# ]] && continue

  # Lấy tên service từ prefix trước dấu "_"
  service_prefix="${key%%_*}"          # MARKETING
  service_name=$(echo "$service_prefix" | tr '[:upper:]' '[:lower:]') # marketing

  # Bỏ prefix service khỏi tên biến
  new_key="${key#${service_prefix}_}"  # POSTGRESQL_DATABASE_URL

  # Tạo đường dẫn output
  output_dir="services/${service_name}/config/${ENV_NAME}"
  output_file="${output_dir}/flyway.conf"

  mkdir -p "$output_dir"

  # Ghi vào file tương ứng của service
  echo "${new_key}=${value}" >> "$output_file"

done < "$ENV_FILE"

echo "✅ Đã tạo file flyway.conf cho tất cả service từ $ENV_FILE"
