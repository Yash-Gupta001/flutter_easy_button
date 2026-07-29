# 🚀 Flutter Easy Button

[![pub package](https://img.shields.io/pub/v/flutter_easy_button.svg)](https://pub.dev/packages/flutter_easy_button)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

**The simplest, most powerful button package for Flutter!** 🎯

Create beautiful Material 3 buttons with **just a few lines of code**. No more boilerplate, no more complexity—just clean, customizable buttons that work perfectly every time.

---

## ✨ Why Choose Flutter Easy Button?

- 🎨 **Beautiful by Default** - Material 3 design out of the box
- ⚡ **Lightning Fast** - Zero dependencies, optimized performance
- 🔄 **Smart Loading States** - Built-in loading indicators that preserve your colors
- 🎯 **Type-Safe** - Compile-time safety with required parameters
- 🛠️ **Highly Customizable** - Control every aspect of your buttons
- 📱 **Production Ready** - Battle-tested and ready for your app

---

## 🎯 Features

| Feature | Description |
|---------|-------------|
| 🎨 **Dual Button Styles** | Switch between filled and outlined with one parameter |
| ⏳ **Loading State** | Built-in spinners that maintain your brand colors |
| 🚫 **Disabled State** | Automatic styling with proper accessibility |
| 🖼️ **Icon Support** | Add leading icons with customizable sizes |
| 📏 **Full-Width Layout** | Responsive buttons that adapt to any screen |
| 🎨 **Custom Colors** | Complete control over background, text, and borders |
| ✏️ **Border Control** | Adjustable width and color for outlined buttons |
| 🔒 **Type Safety** | Required parameters prevent runtime errors |

---

## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_easy_button: ^1.0.3
```

## 💻 Quick Start

### 🎨 Filled Button (Primary Actions)

```dart
import 'package:flutter_easy_button/flutter_easy_button.dart';

CustomButton(
  buttonText: 'Login',
  buttonColor: Colors.blue,
  textColor: Colors.white,
  buttonType: ButtonType.filled,
  onPressed: () {
    debugPrint('Button pressed');
  },
)
```

### 🔲 Outlined Button (Secondary Actions)

```dart
CustomButton(
  buttonText: 'Cancel',
  buttonColor: Colors.blue,
  textColor: Colors.blue,
  buttonType: ButtonType.outlined,
  borderColor: Colors.red, // Optional custom border
  borderWidth: 2.0,
  onPressed: () {
    debugPrint('Button pressed');
  },
)
```

### 🎯 With Icons (Enhanced UX)

```dart
CustomOutlineButton(
  buttonText: 'Sign Up',
  buttonColor: Colors.green,
  textColor: Colors.green,
  buttonType: ButtonType.outlined,
  icon: Icons.person_add, // Beautiful icons
  onPressed: () {
    debugPrint('Sign up pressed');
  },
)
```

### ⏳ Loading State (Smart & Automatic)

```dart
CustomButton(
  buttonText: 'Submit',
  buttonColor: Colors.blue,
  textColor: Colors.white,
  buttonType: ButtonType.filled,
  isLoading: true, // Colors preserved automatically!
  loadingText: 'Submitting...',
  onPressed: () {},
)
```

### 📱 Full-Width Responsive Button

```dart
CustomButton(
  buttonText: 'Continue',
  buttonColor: Colors.purple,
  textColor: Colors.white,
  buttonType: ButtonType.filled,
  icon: Icons.arrow_forward,
  iconSize: 20,
  isFullWidth: true,
  onPressed: () {
    debugPrint('Continue pressed');
  },
)
```

---

## 📋 Complete API Reference

| Parameter | Type | Required | Default | Description |
|-----------|------|----------|---------|-------------|
| `buttonText` | `String` | ✅ | - | Text displayed on the button |
| `buttonColor` | `Color` | ✅ | - | Background/border color |
| `textColor` | `Color` | ✅ | - | Text and icon color |
| `buttonType` | `ButtonType` | ✅ | - | Button style (filled/outlined) |
| `onPressed` | `VoidCallback` | ✅ | - | Callback when pressed |
| `buttonTextId` | `String?` | ❌ | `null` | Optional localization ID |
| `icon` | `IconData?` | ❌ | `null` | Optional leading icon |
| `iconSize` | `int` | ❌ | `18` | Icon size |
| `borderColor` | `Color?` | ❌ | `buttonColor` | Border color (outlined) |
| `borderWidth` | `double` | ❌ | `2.0` | Border width (outlined) |
| `isLoading` | `bool` | ❌ | `false` | Show loading indicator |
| `isFullWidth` | `bool` | ❌ | `false` | Expand to full width |
| `isDisabled` | `bool` | ❌ | `false` | Disable the button |
| `loadingText` | `String` | ❌ | `"Loading..."` | Text during loading |

---

## 🎯 What Makes This Different?

Unlike other button packages, Flutter Easy Button:

- ✅ **Preserves colors during loading** - No more gray buttons when loading
- ✅ **Zero dependencies** - Won't bloat your app
- ✅ **Type-safe by design** - Catches errors at compile time
- ✅ **Material 3 compliant** - Modern design standards
- ✅ **Production tested** - Used in real-world apps

---

## 🤝 Contributing

Contributions are welcome! Feel free to open issues or submit pull requests on [GitHub](https://github.com/Yash-Gupta001/flutter_easy_button).

---

## 📄 License

This package is licensed under the MIT License. See [LICENSE](LICENSE) for details.

---

## ⭐ Show Your Support

If you find this package helpful, please give it a ⭐ on [GitHub](https://github.com/Yash-Gupta001/flutter_easy_button) and like it on [pub.dev](https://pub.dev/packages/flutter_easy_button)!

**Made with ❤️ for the Flutter community**