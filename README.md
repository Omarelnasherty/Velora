
# 🛍️ Velora

This is a simplified e-commerce Flutter app created to practice and apply core Flutter concepts, such as:

- Building UI with widgets
- State management using `setState`
- Working with external APIs
- Using `FutureBuilder` to handle asynchronous data
- Navigating between screens
- Organizing code with models, services, and custom widgets

> The app fetches product data from an API and allows updating product details through a dedicated form screen.

---

## 📱 Screens & Features

- **Home Page**  
  Displays a grid of products retrieved from [FakeStoreAPI](https://fakestoreapi.com/).

- **Update Product Page**  
  Allows editing of product title, price, description, and image URL.  
  Changes are sent via a PUT request to the API.

- **Custom Widgets**  
  Modular design using reusable components like `CustomCard`, `CustomTextField`, and `CustomButton`.

---

## 🧱 Tech Stack

- **Flutter** (UI Framework)
- **Dart** (Language)
- `http` (Networking)
- `modal_progress_hud_nsn` (Loading Indicator)
- `font_awesome_flutter` (Icons)

---

## 🗂 Project Structure

```

lib/
├── main.dart                      // Entry point
├── models/                        // Product & Rating models
│   └── product\_model.dart
├── services/                      // API service classes
│   ├── get\_all\_product\_service.dart
│   └── update\_product.dart
├── screens/                       // Screens
│   ├── home\_page.dart
│   └── update\_product\_page.dart
├── widgets/                       // Reusable UI components
│   ├── custom\_card.dart
│   ├── custom\_button.dart
│   └── custom\_text\_field.dart

````

---

## 🚀 Getting Started

1. Clone the repository:
   ````
   git clone https://github.com/Omarelnasherty/Velora.git
   cd Velora
   
2. Install dependencies:

   ````
   flutter pub get
  
3. Run the app:

   ````
   flutter run

---

## 🎯 Future Plans

This version focuses on fundamentals. The next release will include:

* ✅ Full-featured store with cart & checkout
* ✅ Payment integration (e.g. Stripe, PayPal)
* ✅ Admin dashboard for managing products
* ✅ Animations and polished UI/UX
* ✅ Clean Architecture & State Management (e.g. Provider, Bloc)

  > This project is part of my learning journey — thanks for checking it out! 🚀

---
