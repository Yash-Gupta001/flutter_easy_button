## 1.0.0

- Initial release.
- Added `CustomFilledButton`.
- Supports loading state.
- Supports disabled state.
- Supports optional icons.
- Supports full-width layout.
- Customizable colors.

## 1.0.1

- Fixed issue for color changing during loading.

## 1.0.2

- Made textColor parameter required.


## 1.0.3

### 🎉 Major Update - Dual Button Styles

#### New Features
- ✨ Added `ButtonType` enum (filled, outlined) for type-safe button selection
- 🎨 Added `CustomButton` widget with support for both filled and outlined styles
- 🔲 Added `CustomOutlineButton` widget with all CustomButton features
- 🎯 Made `buttonType` parameter required - users must explicitly select button style
- ✏️ Added `borderColor` parameter for custom border colors (defaults to buttonColor)
- 📏 Added `borderWidth` parameter for adjustable border thickness (default: 2.0)
- 🔄 Both button classes now support dynamic type switching

#### Improvements
- 🚀 Zero dependencies - lightweight and fast
- 📱 Production-ready with comprehensive example app
- 📚 Enhanced documentation with real-world usage examples
- 🎨 Material 3 compliant design
- ⏳ Smart loading states that preserve button colors

#### Breaking Changes
- ⚠️ `buttonType` is now a required parameter
- ⚠️ `textColor` and `buttonColor` are now required parameters

#### Migration Guide
```dart
// Old (v1.0.2)
CustomFilledButton(
  buttonText: 'Click Me',
  onPressed: () {},
)

// New (v1.0.3)
CustomButton(
  buttonText: 'Click Me',
  buttonColor: Colors.blue,
  textColor: Colors.white,
  buttonType: ButtonType.filled,
  onPressed: () {},
)
```
