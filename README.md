# Custom Checkbox

A customizable and animated checkbox widget for Flutter.

## ✨ Features

- Square, Rounded, and Circle shapes
- Custom active & inactive colors
- Custom check icon color
- Optional animation
- Custom size
- Label support
- Easy to use

---

## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  custom_checkbox:
    path: ../
```

Then run:

```
flutter pub get
```

---

## 🚀 Usage

Import:

```dart
import 'package:custom_checkbox/custom_checkbox.dart';
```

Basic Example:

```dart
CustomCheckbox(
  label: "Accept Terms",
)
```

Animated Example:

```dart
CustomCheckbox(
  initialValue: true,
  shape: CheckboxShape.circle,
  activeColor: Colors.green,
  inactiveColor: Colors.grey,
  isAnimated: true,
)
```

---

## 🎨 Shapes

- `CheckboxShape.square`
- `CheckboxShape.rounded`
- `CheckboxShape.circle`

---

## ⚙️ Parameters

| Parameter | Description |
|------------|------------|
| initialValue | Initial state |
| activeColor | Background color when checked |
| inactiveColor | Border color when unchecked |
| checkColor | Check icon color |
| size | Checkbox size |
| borderRadius | Corner radius (for rounded) |
| shape | Checkbox shape |
| isAnimated | Enable/disable animation |
| animationDuration | Duration of animation |

---

## 🛠 Example Project

Check the `example/` folder for full working demo.

---

## 📄 License
MIT License

Copyright (c) 2026 Jay

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


