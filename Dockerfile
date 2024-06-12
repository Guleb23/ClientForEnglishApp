# Использование базового образа Node.js
FROM node:14

# Установка рабочей директории
WORKDIR /app

# Копирование package.json и package-lock.json
COPY package*.json ./

# Установка зависимостей
RUN npm install

# Копирование исходного кода
COPY . .

# Сборка приложения
RUN npm run build

# Установка порта
EXPOSE 3000

# Запуск приложения
CMD ["npm", "start"]

