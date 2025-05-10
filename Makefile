.PHONY: analyze build-dev clean easy-localization-gen run run-dev run-stage runner-build runner-watch remove-unused-import outdated

analyze:
	flutter analyze

build-dev:
	flutter build apk --release --flavor dev -t lib/main.dart

clean:
	flutter clean

run:
	flutter run --flavor dev --target lib/main.dart

runner-build:
	flutter pub run build_runner build --delete-conflicting-outputs

runner-watch:
	flutter pub run build_runner watch --delete-conflicting-outputs

remove-unused-import:
	dart fix --apply --code=unused_import

outdated:
	flutter pub outdated