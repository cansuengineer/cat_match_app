# cat_match_app
cat breed catalog app

# 🐾 CatMatch

CatMatch is a modern, sleek, and user-friendly mobile application UI designed for cat lovers to discover different cat breeds, explore their unique traits, and find their perfect feline companion.

This project is built using **Flutter** and the **Material 3** design system, adhering to clean code principles and a modular component-based architecture.

---


## 📸 Screenshots

<p align="center">
  <img src="https://raw.githubusercontent.com/cansuengineer/cat_match_app/main/assets/page1.png" width="22%" style="margin: 0 22px;"   &nbsp;&nbsp; />
  <img src="https://raw.githubusercontent.com/cansuengineer/cat_match_app/main/assets/page2.png" width="22%" style="margin: 0 22px;"   &nbsp;&nbsp;/>

</p>

> Note: Make sure to add these images to your repository under the `assets/` folder and update file names if necessary.

---

## ✨ Features

* **Breed of the Day (Hero Card):** Showcases a featured cat breed daily with a dynamic cover image, quick description, and a call-to-action button.
* **Smart Search Bar:** A clean search interface simulated for filtering cats by breed, traits, or coat patterns.
* **Popular Categories:** A beautifully color-coded horizontal menu that categorizes cats based on specific traits (Longhair, Hypoallergenic, Playful, Indoor).
* **New to Catalog (Grid View):** A dual-column responsive grid layout displaying recently added breeds with individual tags and quick navigation arrows.
* **Advanced Navigation:** Features a fixed Bottom Navigation Bar and a custom Floating Action Button (FAB) for seamless app routing.

---

## 📁 Project Structure (Architecture)

To maximize readability and ease of maintenance, the presentation logic (widgets) has been completely decoupled from the main screen structure:

```text
lib/
├── main.dart                 # Application entry point and structural layout
└── widgets/
    └── home_widgets.dart     # Independent, reusable sub-widgets for the Home Page