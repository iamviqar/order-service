# 🧾 Order Service (Go + Kafka + Prometheus)

This is a production-grade microservice built in **Go**, featuring:
- 🧩 REST APIs with **Gin**
- 📦 ORM with **GORM**
- ⚙️ Event-driven architecture using **Kafka** (via **Sarama**)
- 🧵 Concurrency using **Goroutines**
- 📊 Monitoring with **Prometheus**
- 📈 Performance profiling using **pprof**
- 🐳 Containerized with **Docker & docker-compose**

---

## 📁 Project Structure

```
order-service/
├── cmd/               # App entry point
├── config/            # Configuration management
├── controller/        # API controllers
├── model/             # GORM models
├── repository/        # DB access logic
├── service/           # Business logic
├── kafka/             # Kafka producer/consumer
├── routes/            # Route initialization
├── middleware/        # Prometheus, pprof, etc.
├── Dockerfile
├── docker-compose.yml
└── prometheus.yml
```

---

## ⚙️ Prerequisites

- [Go 1.22+](https://golang.org/dl/)
- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- Kafka, Postgres, and Prometheus (automatically configured via Docker)

---

## 🚀 Quick Start

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/order-service.git
cd order-service
```

### 2. Start All Services

```bash
docker-compose up --build
```

This will start:
- 🐘 PostgreSQL
- 🦍 Kafka + Zookeeper
- 🔁 Order service (Gin + GORM + Kafka + Prometheus)
- 📊 Prometheus at [http://localhost:9090](http://localhost:9090)

---

## 🔌 API Endpoints

### Create Order
```http
POST /orders
Content-Type: application/json

{
  "customer": "John Doe",
  "amount": 99.99
}
```

### List Orders
```http
GET /orders
```

---

## 📡 Kafka Topics

- **orders**: Published when a new order is created
- Kafka broker exposed on `localhost:9092`

---

## 📈 Monitoring

- **Prometheus**: [http://localhost:9090](http://localhost:9090)
- **App Metrics**: [http://localhost:8080/metrics](http://localhost:8080/metrics)
- **pprof Debugging**: [http://localhost:8080/debug/pprof](http://localhost:8080/debug/pprof)

---

## 🧪 Testing & Debugging

To inspect memory usage, goroutines, or CPU:

```bash
go tool pprof http://localhost:8080/debug/pprof/heap
go tool pprof http://localhost:8080/debug/pprof/profile
```

---

## 📦 Building Locally

```bash
go mod download
go build -o orderservice ./cmd/main.go
./orderservice
```

---

## ✅ TODO

- Add unit tests
- Health check endpoints
- CI/CD with GitHub Actions
- JWT-based auth

---

## 📄 License

MIT License. Use freely with attribution.

---

## 🤝 Contributing

Pull requests and issues are welcome. Please fork and submit PRs to contribute.
