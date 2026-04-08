.PHONY: help pg b w a t f clean apk

# Default command when you just type 'make'
help:
	@echo "📱 Charades App Makefile (FVM Enabled)"
	@echo "--------------------------------------"
	@echo "Available commands:"
	@echo "  make pg    - Get packages (fvm flutter pub get)"
	@echo "  make b     - Run build_runner (Generate Freezed code)"
	@echo "  make w     - Run build_runner in watch mode (Auto-generate on save)"
	@echo "  make a     - Analyze code for errors/warnings"
	@echo "  make t     - Run unit tests"
	@echo "  make f     - Format all Dart files"
	@echo "  make clean - Clean project and reinstall dependencies"
	@echo "  make apk   - Build release APK for Android"

# Get packages
pg:
	fvm flutter pub get
	cd ios && pod install && cd ..
	cd macos && pod install && cd ..

# Build runner (One-time generation for Freezed)
b:
	fvm dart run build_runner build --delete-conflicting-outputs

# Build runner (Watch mode - keeps generating as you save files)
w:
	fvm dart run build_runner watch --delete-conflicting-outputs

# Analyze code
a:
	fvm flutter analyze

# Run tests
t:
	fvm flutter test

# Format code
f:
	fvm dart format lib/ test/

# Deep clean
clean:
	fvm flutter clean
	rm -rf .dart_tool
	rm -f pubspec.lock
	cd ios && rm -rf Pods && rm -f Podfile.lock && cd ..
	cd macos && rm -rf Pods && rm -f Podfile.lock && cd ..