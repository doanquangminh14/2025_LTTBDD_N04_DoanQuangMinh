```mermaid
sequenceDiagram
    autonumber
    actor User
    participant SettingsPage as "SettingsPage\n(UI - settings_page.dart)"
    participant SettingsNotifier as "SettingsNotifier\n(Logic - settings_notifier.dart)"
    participant MyApp as "MyApp\n(UI - main.dart)"
    participant AppLocalizations as "AppLocalizations\n(Hệ thống dịch)"

    %% Bắt đầu luồng
    User->>SettingsPage: (1) Chọn "Tiếng Việt" trên Dropdown
    SettingsPage->>SettingsNotifier: (2) setLocale(Locale('vi'))
    SettingsNotifier-->>SettingsNotifier: (3) _locale = Locale('vi')
    SettingsNotifier-->>SettingsNotifier: (4) notifyListeners()
    
    MyApp-->>MyApp: (5) Consumer<SettingsNotifier>\nnhận thông báo thay đổi
    MyApp->>MyApp: (6) build lại MaterialApp(locale: Locale('vi'))

    MyApp->>AppLocalizations: (7) Flutter tải bản dịch mới (vi)
    AppLocalizations-->>MyApp: (8) Cung cấp chuỗi Tiếng Việt

    MyApp->>User: (9) UI hiển thị lại bằng Tiếng Việt
