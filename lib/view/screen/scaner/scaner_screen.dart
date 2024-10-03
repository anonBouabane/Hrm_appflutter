import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ScannerScreenState createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  final LocalAuthentication _localAuth = LocalAuthentication();
  bool _isAuthenticated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fingerprint Check-In")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _isAuthenticated
                  ? "Check-in Successful!"
                  : "Tap below to scan your fingerprint",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _authenticateWithBiometrics,
              child: const Text("Scan Fingerprint"),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _authenticateWithBiometrics() async {
    try {
      // Check if the device supports biometric authentication
      bool canCheckBiometrics = await _localAuth.canCheckBiometrics;

      // Check if the device has any enrolled biometrics (e.g., fingerprints)
      List<BiometricType> availableBiometrics =
          await _localAuth.getAvailableBiometrics();

      if (!canCheckBiometrics || availableBiometrics.isEmpty) {
        _showError("Biometric authentication not available or not set up.");
        return;
      }

      // Attempt to authenticate with biometrics (fingerprint, face, etc.)
      bool didAuthenticate = await _localAuth.authenticate(
        localizedReason: 'Please scan your fingerprint to check-in',
        // Remove the biometricOnly parameter
      );

      if (didAuthenticate) {
        setState(() {
          _isAuthenticated = true;
        });
      } else {
        _showError("Authentication failed. Try again.");
      }
    } on PlatformException catch (e) {
      _showError("Error during authentication: ${e.message}");
    }
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
