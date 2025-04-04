# ☕ Café API

The **Café API** is a lightweight backend service designed to serve curated café data to any frontend client. Whether you're building a café discovery app or need café-related data for your project, this API provides structured JSON endpoints with useful data like location, opening hours, and amenities.


<br>
App home: 🚧 Coming soon

## 📦 Features

- RESTful API built with Rails
- JSON responses only – no HTML
- Search cafés by title
- Seeded with real café data from around the world
- Supports extended info via `hours` (JSONB) and `criteria` (array)

## 📁 API Endpoints

| Verb | URL               | Description            |
|------|-------------------|------------------------|
| GET  | `/api/v1/cafes`   | Returns all cafés      |
| POST | `/api/v1/cafes`   | Create a new café      |
| GET  | `/api/v1/criteria`| Returns unique criteria|

## 🚀 Getting Started

### 📌 Setup

Install gems
```bash
bundle install
```


### 🛠 DB Setup

```bash
rails db:create
rails db:migrate
rails db:seed
```

### ▶️ Run a server

```bash
rails s
```

Then visit: [http://localhost:3000/api/v1/cafes](http://localhost:3000/api/v1/cafes)

## 🔐 CORS Configuration

This API is cross-origin ready! To allow your frontend to connect, configure `config/initializers/cors.rb`.

For development, it's fine to use:

```ruby
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post]
  end
end
```

## 🧰 Tech Stack

- [Rails 7 (API Mode)](https://guides.rubyonrails.org/api_app.html)
- [PostgreSQL](https://www.postgresql.org/)
- [Rack CORS](https://github.com/cyu/rack-cors)
