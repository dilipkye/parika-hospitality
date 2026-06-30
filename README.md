# Parika Hospitality Services - Flutter Web

A beautiful and responsive Flutter web application for Parika Hospitality Services, featuring restaurant chains, banquet halls, and hospitality services.

## 🏢 About Parika Hospitality Services

Parika Hospitality Services operates premium hospitality establishments across Bangalore:

### Richmond Town Location
- **Kudla Restaurant** - Coastal & Multi-Cuisine restaurant
- **Gourmet Kitchen & Bar** - Premium dining with international & Indian cuisines
- **Room Service** - Food delivery to rooms
- **Aapthi Hall** (1st Floor) - Banquet hall for 150 guests
- **Golden Pearl** (5th Floor) - Grand banquet hall for 300 guests

### Sahakarnagar Location (P.M Square Building)
- **Parika Coastal Village** - Specialty seafood restaurant
- **Uptown Rooftop Bar & Grill** - Premium rooftop dining
- **Aapthi Hall** - Banquet hall for 200 guests

## ✨ Features

- **Responsive Design** - Works perfectly on desktop, tablet, and mobile
- **Modern UI/UX** - Beautiful animations and smooth transitions
- **Restaurant Showcase** - Display of all restaurant offerings
- **Banquet Hall Listings** - Detailed information about event spaces
- **Location Information** - Complete details with contact info and amenities
- **Contact Integration** - Phone, email, and map integration
- **Service Highlight** - Overview of all hospitality services

## 📱 Responsive Breakpoints

- **Desktop**: Full navigation and grid layouts
- **Tablet**: Optimized layout with 2-column grids
- **Mobile**: Single column layout with collapsible sections

## 🎨 Design System

### Color Palette
- **Primary Brown**: #8B4513
- **Dark Brown**: #5C2E0F
- **Gold**: #FFD700
- **Cream**: #FFF8DC
- **Light Grey**: #F5F5F5

### Typography
- **Font**: Poppins (Google Fonts)
- **Heading 1**: 48px Bold
- **Heading 2**: 36px Bold
- **Heading 3**: 28px SemiBold
- **Body Large**: 16px Medium

## 📁 Project Structure

```
lib/
├── main.dart                 # App entry point
├── theme/
│   └── app_theme.dart       # Theme configuration
├── models/
│   ├── location_model.dart  # Location data model
│   ├── restaurant_model.dart # Restaurant data model
│   └── banquet_model.dart   # Banquet hall data model
├── pages/
│   └── home_page.dart       # Main home page
└── widgets/
    ├── header_widget.dart        # Navigation header
    ├── hero_section.dart         # Landing section
    ├── services_section.dart     # Services overview
    ├── restaurants_section.dart  # Restaurants display
    ├── banquet_halls_section.dart # Banquet halls
    ├── locations_section.dart    # Location cards
    └── footer_widget.dart        # Footer section
```

## 🚀 Getting Started

### Prerequisites
- Flutter 3.0+
- Dart 3.0+
- Web support enabled in Flutter

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/dilipkye/parika-hospitality.git
cd parika-hospitality
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Run the app**
```bash
flutter run -d web
```

4. **Build for production**
```bash
flutter build web --release
```

## 📦 Dependencies

- **get**: ^4.6.5 - State management & navigation
- **google_fonts**: ^6.1.0 - Beautiful fonts
- **intl**: ^0.18.1 - Internationalization
- **url_launcher**: ^6.1.10 - External URL launching
- **cached_network_image**: ^3.2.3 - Image caching
- **carousel_slider**: ^4.2.1 - Image carousels
- **smooth_page_indicator**: ^1.0.1 - Page indicators
- **flutter_spinkit**: ^5.2.0 - Loading indicators

## 🔧 Configuration

### Update Contact Information
Edit `lib/models/location_model.dart` to update phone numbers and email addresses.

### Update Restaurant Information
Edit `lib/models/restaurant_model.dart` to modify restaurant details and specialties.

### Customize Banquet Halls
Edit `lib/models/banquet_model.dart` to add or modify banquet hall information.

### Modify Theme Colors
Edit `lib/theme/app_theme.dart` to change color scheme.

## 📸 Assets

Create the following directories and add images:
```
assets/
├── images/
│   ├── hero-bg.jpg
│   ├── richmond-town.jpg
│   ├── sahakarnagar.jpg
│   ├── kudla.jpg
│   ├── gourmet-kitchen.jpg
│   ├── coastal-village.jpg
│   ├── uptown-rooftop.jpg
│   ├── golden-pearl.jpg
│   ├── aapthi-richmond.jpg
│   └── aapthi-sahakarnagar.jpg
├── icons/
└── logos/
```

## 🔗 Integration Points

The following features can be integrated with backend services:

- **Reservations**: Connect to booking system
- **Menu Display**: Load from API
- **Online Ordering**: Integrate with food delivery system
- **Event Booking**: Connect to banquet booking system
- **Contact Forms**: Send inquiries via email

## 🌐 Deployment

### Firebase Hosting
```bash
flutter build web --release
firebase deploy
```

### Netlify
```bash
flutter build web --release
netlify deploy --prod --dir=build/web
```

### Vercel
```bash
flutter build web --release
vercel --prod
```

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👥 Contributors

- Dilip Kye (Developer)

## 📞 Support

For support or inquiries about Parika Hospitality Services, visit the website or contact:
- Phone: [Contact Number]
- Email: contact@parika.com

## 🎯 Future Enhancements

- [ ] Online reservation system
- [ ] Menu and pricing integration
- [ ] Image gallery with lightbox
- [ ] Customer testimonials section
- [ ] Blog/News section
- [ ] Multiple language support (Hindi, Kannada)
- [ ] Dark mode support
- [ ] Mobile app (iOS & Android)
- [ ] Admin dashboard
- [ ] Email notifications

## 🏆 Credits

- Design inspiration from premium hospitality websites
- Built with Flutter for cross-platform compatibility
- Fonts from Google Fonts
