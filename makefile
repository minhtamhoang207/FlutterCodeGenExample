new_feature: ## Generates a new feature
	@echo "╠ Generating a new feature..."
	@mason get feature
	@mason make feature
	@fvm dart run build_runner build --delete-conflicting-outputs

new_model: ## Generates a new model
	@echo "╠ Generating a new model..."
	@make gen-model path=$(path)
gen-model:
	@mason make model_freezed_json -o $(path)

gen: ## Generates the assets
	@echo "╠ Generating code..."
	@fvm flutter pub get
	@fvm dart run build_runner build --delete-conflicting-outputs

clean: ## clean & get dependencies
	@echo "╠ Cleaning dependencies..."
	@fvm flutter clean
	@fvm flutter pub cache clean
	@fvm flutter pub get

format: ## Formats the code
	@echo "╠ Formatting the code"
	@fvm dart format lib .

lint: ## Lints the code
	@echo "╠ Verifying code..."
	@fvm dart analyze . || (echo "Error in project"; exit 1)

run: ## Run debug mode
	@make run-env environment=$(env)
run-env:
	fvm flutter run --flavor $(env) -t lib/main.dart --dart-define=environmentName=$(env)
run_develop:
	@make run-env env=develop
run_staging:
	@make run-env env=staging
run_product:
	@make run-env env=product

build-apk: ## Builds the apk
	@make build-env environment=$(env)
build-env:
	fvm flutter build apk --flavor $(env) -t lib/main.dart --dart-define=environmentName=$(env)
develop_apk:
	@make build-env env=develop
staging_apk:
	@make build-env env=staging
product_apk:
	@make build-env env=product