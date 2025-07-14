# Merchants App

**Merchants** is a Flutter-based application that simulates listing local merchants and their details. It was originally designed to integrate Google Maps API and fetch nearby merchants based on user location. However, due to API restrictions, the app currently uses the [Fake Store API](https://fakestoreapi.com/) as a placeholder data source to power the frontend and UI testing.

---

## Features

- **Splash Screen**  
  A welcoming splash screen that initializes the app and simulates data loading.

- **Home Screen**
   - AppBar with a menu icon and a clean theme.
   - A custom Drawer (sidebar) that provides persistent navigation across screens.
   - List of "merchants" (products from Fake Store API), displayed as cards.
   - Each card shows name, price, thumbnail, and has a "Details" button.

- **Merchant Details Screen**
   - Shows a detailed view of the selected merchant.
   - Includes an image, description, contact info, and placeholder reviews.
   - Floating action button to simulate actions like saving or favoriting.

- **Consistent Sidebar**
   - Drawer includes: Profile, Permissions, Notifications, My Merchants, Settings, and Logout.
   - Remains accessible from both home and detail screens for a unified experience.

- **API Integration**
   - Real HTTP integration using the Fake Store API.
   - Ready to switch to any real merchant/location-based API in the future.

---

## API Notes

This app was intended to use the Google Places API to fetch real-time merchants based on user location. However:

- Google Places requires billing to be enabled and is subject to quota limitations.
- The app has built-in support for location access using the `geolocator` package.
- For this version, the app integrates with [Fake Store API](https://fakestoreapi.com/) to simulate merchant listings and demonstrate the UI flow.

**API used:**  
`https://fakestoreapi.com/products`

---

## Tech Stack

- **Flutter** — Cross-platform UI toolkit.
- **Dart** — Programming language used by Flutter.
- **HTTP** — To fetch merchant/product data.
- **Geolocator** — To manage location permissions and setup for future integration.
- **Material Design** — For styling components and UI consistency.

## How to Run

1. **Clone the repo**:
   ```bash
   git clone https://github.com/your-username/merchants-app.git
   cd merchants-app


