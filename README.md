fvm dart run build_runner build --delete-conflicting-outputs

https://brickhub.dev/
https://pub.dev/packages/mason_cli
1. mason init

2. mason get feature

3. mason make feature

mason make model_freezed_json -o $(path)



## Change app icon

To change app icon change the `app_logo.png` in `assets/` and run following command
```bash
fvm flutter pub run flutter_launcher_icons
```

## Change splash screen
To change splash screen change the `splash.png` in `assets/` and run following command
```bash
fvm flutter pub run flutter_native_splash:create
```