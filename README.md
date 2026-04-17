# Flutter Training

A Flutter learning project tracking progress across multiple training sessions. This repository is part of a structured Flutter training program with 2 hours of learning per week.

## Project Structure

This project uses parallel branches to track progress across different training sessions:

### Branches Overview

| Branch | Status | Description |
|--------|--------|-------------|
| `main` | Active | Main branch with consolidated learning resources |
| `session-1` | Completed | Introduction to Flutter and First App |
| `session-2` | Completed | Dart Basics and Cap ID Template |
| `session-2-complete` | Completed | Session 2 Complete with all features |
| `session-3` | In Progress | Advanced Flutter Concepts (Starting Next Session) |

## Getting Started

### Prerequisites
- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio or Xcode for mobile development
- Visual Studio Code or similar IDE

### Installation

```bash
# Clone the repository
git clone <repository-url>
cd flutter_training

# Install dependencies
flutter pub get

# Run the application
flutter run
```

## Switching Between Sessions

To work on a specific session:

```bash
# List all available branches
git branch -a

# Switch to a specific session
git checkout session-1    # For Session 1
git checkout session-2    # For Session 2
git checkout session-2-complete  # For Session 2 Complete
git checkout session-3    # For Session 3
```

## Development Workflow

1. Each session is developed on its own branch
2. Work is committed with descriptive messages
3. Completed sessions are marked with a `-complete` suffix
4. The `main` branch serves as a reference with consolidated documentation

## Notes

- **Time Commitment:** 2 hours per week
- **Release Schedule:** One session completed every 1-2 weeks
- After each session completion, a `session-X-complete` tag is created
- Next session builds upon previous learnings while maintaining branch isolation

## Resources

### Documentation
- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Flutter Cookbook](https://flutter.dev/docs/cookbook)

### Design System
- [Material Design 3](https://m3.material.io/)
- [Material Design 3 for Flutter](https://m3.material.io/develop/flutter)

### Video Tutorials
- [Flutter Crash Course #1 - What is Flutter?](https://www.youtube.com/watch?v=j_rCDc_X-k8&list=PL4cUxeGkcC9giLVXCHSQmWqlHc9BLXdVx)
- [Flutter Tutorial for Beginners #1 - Intro & Setup](https://www.youtube.com/watch?v=1ukSR1GRtMU&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ)
- [Dart Crash Course #1 - What is Dart?](https://www.youtube.com/watch?v=QGqMJzywasg&list=PL4cUxeGkcC9iVGY3ppchN9kIauln8IiEh)

## License

This project is for learning and training purposes.
