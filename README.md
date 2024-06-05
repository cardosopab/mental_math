# Mentis Math

Mentis Math is a Flutter-based educational app designed to enhance your mental math skills. As of version 1.0.0, the app features the "Complements" exercise, which helps users practice finding complementary numbers.

## Features

- Complements exercise: Improve your ability to find complementary numbers that add up to 10.

- Responsive Theme: The app supports both light and dark modes, adapting to your system settings.

- Clean and Intuitive UI: Simple and easy-to-use interface for a seamless user experience.

## Installation

### Download the repo:

```bash
git clone https://github.com/cardosopab/mental_math.git
cd mental_math
```

### Install dependencies:

```bash
flutter pub get
```

### Run the app:

```bash
flutter run
```

## Development

The Mentis Math app uses the BLoC (Business Logic Component) pattern and Cubits to manage state for several reasons:

- Separation of Concerns: BLoC helps in separating business logic from UI components, making the codebase more modular and easier to manage.

- Predictable State Management: By using Cubits, which are a simpler version of BLoC, we maintain predictable and manageable state transitions, making the app more reliable.

- Scalability: BLoC is well-suited for handling complex state management scenarios, which can be beneficial as the app grows in functionality.

## License

This project is licensed under the GNU GPL-3.0 License. See the [LICENSE](LICENSE) file for details.

## Acknowledgements

- Flutter Dart and BLoC teams for providing excellent tools and documentation.

- The open-source community for their contributions and support.
