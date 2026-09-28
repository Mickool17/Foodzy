# Foodzy

**A food delivery app UI for Nigerian restaurants, built with Flutter.** It covers onboarding, sign-in, sign-up, phone verification and the full password-recovery flow.

![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart&logoColor=white)
![Platforms](https://img.shields.io/badge/platforms-Android%20%7C%20iOS%20%7C%20Web-lightgrey)
![Status](https://img.shields.io/badge/status-UI%20prototype-orange)

> **Status: UI prototype / work in progress.** The onboarding and authentication screens are fully built and navigable. Backend integration (auth, restaurants, ordering, payments) is not implemented yet, so the buttons move between screens but do not call a server.

## Screenshots

<table>
  <tr>
    <td align="center"><img src="screenshots/01_onboarding.png" width="220"><br><sub>Onboarding 1</sub></td>
    <td align="center"><img src="screenshots/02_onboarding_2.png" width="220"><br><sub>Onboarding 2</sub></td>
    <td align="center"><img src="screenshots/03_onboarding_3.png" width="220"><br><sub>Onboarding 3</sub></td>
    <td align="center"><img src="screenshots/04_sign_in.png" width="220"><br><sub>Sign in</sub></td>
  </tr>
  <tr>
    <td align="center"><img src="screenshots/05_sign_up.png" width="220"><br><sub>Sign up</sub></td>
    <td align="center"><img src="screenshots/06_add_phone.png" width="220"><br><sub>Add phone number</sub></td>
    <td align="center"><img src="screenshots/07_verify_code.png" width="220"><br><sub>Verify phone (OTP)</sub></td>
    <td align="center"><img src="screenshots/08_forgot_password.png" width="220"><br><sub>Forgot password</sub></td>
  </tr>
  <tr>
    <td align="center"><img src="screenshots/09_reset_via_email.png" width="220"><br><sub>Verify email</sub></td>
    <td align="center"><img src="screenshots/10_reset_password.png" width="220"><br><sub>Reset password</sub></td>
    <td></td><td></td>
  </tr>
</table>

## Features

- **Onboarding carousel:** 3 illustrated pages built with `PageView`, with an animated page indicator, Skip, Next and Get Started.
- **Sign in / Sign up:** phone number and password sign-in, sign-up with name, email and password, and a "Continue with Google" button (UI only).
- **Phone verification:** add a phone number, then a 4-digit code verification screen with "Resend".
- **Password recovery:** choose email or phone as the recovery channel, verify, then set and confirm a new password.
- **Responsive sizing:** `flutter_screenutil` scales the design (375×812) to any screen size.
- **Native splash screen** via `flutter_native_splash`.
- Named-route navigation between all screens.

## Tech stack

| Area | Tools |
|---|---|
| Framework | Flutter, Dart 3 |
| UI | Material, `google_fonts` (Poppins / Urbanist), `smooth_page_indicator` |
| Layout | `flutter_screenutil` |
| Splash | `flutter_native_splash` |

## Project structure

```
lib/
├── main.dart            # App entry, ScreenUtil setup, named routes
├── splashscreen.dart    # Onboarding carousel (PageView + indicator)
├── onboarding/          # page1, page2, page3 onboarding slides
├── signinscreen.dart    # Sign in
├── signupscreen.dart    # Sign up
├── addphone.dart        # Add phone number + OTP verification
└── forget.dart          # Forgot password → verify → reset flow
images/                  # Illustrations and icons
```

## Getting started

```bash
git clone https://github.com/Mickool17/Foodzy.git
cd Foodzy
flutter pub get
flutter run            # Android / iOS device or emulator
flutter run -d chrome  # or run it in the browser
```

Requires Flutter 3.x (Dart 3).

## Roadmap

- [ ] Restaurant listing and menu screens
- [ ] Cart, checkout and payments
- [ ] Real authentication (Firebase / REST API)
- [ ] Live order and delivery tracking with maps

## Author

Built by [@Mickool17](https://github.com/Mickool17)
