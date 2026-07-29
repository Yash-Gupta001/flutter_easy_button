import 'package:flutter/material.dart';
import 'package:flutter_easy_button/flutter_easy_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Easy Button Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ButtonDemoPage(),
    );
  }
}

class ButtonDemoPage extends StatefulWidget {
  const ButtonDemoPage({super.key});

  @override
  State<ButtonDemoPage> createState() => _ButtonDemoPageState();
}

class _ButtonDemoPageState extends State<ButtonDemoPage> {
  bool isLoading = false;

  void _simulateLoading() {
    setState(() => isLoading = true);
    Future.delayed(const Duration(seconds: 2), () {
      setState(() => isLoading = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Easy Button Examples'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              '🎨 Filled Buttons',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            
            // Basic Filled Button
            CustomButton(
              buttonText: 'Primary Button',
              buttonColor: Colors.blue,
              textColor: Colors.white,
              buttonType: ButtonType.filled,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Primary button pressed!')),
                );
              },
            ),
            const SizedBox(height: 12),
            
            // Filled Button with Icon
            CustomButton(
              buttonText: 'Login',
              buttonColor: Colors.green,
              textColor: Colors.white,
              buttonType: ButtonType.filled,
              icon: Icons.login,
              iconSize: 20,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Login pressed!')),
                );
              },
            ),
            const SizedBox(height: 12),
            
            // Loading Button
            CustomButton(
              buttonText: 'Submit',
              buttonColor: Colors.purple,
              textColor: Colors.white,
              buttonType: ButtonType.filled,
              isLoading: isLoading,
              loadingText: 'Submitting...',
              onPressed: _simulateLoading,
            ),
            const SizedBox(height: 12),
            
            // Full Width Button
            CustomButton(
              buttonText: 'Continue',
              buttonColor: Colors.orange,
              textColor: Colors.white,
              buttonType: ButtonType.filled,
              icon: Icons.arrow_forward,
              isFullWidth: true,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Continue pressed!')),
                );
              },
            ),
            const SizedBox(height: 12),
            
            // Disabled Button
            CustomButton(
              buttonText: 'Disabled',
              buttonColor: Colors.grey,
              textColor: Colors.white,
              buttonType: ButtonType.filled,
              isDisabled: true,
              onPressed: () {},
            ),
            
            const SizedBox(height: 32),
            const Divider(),
            const SizedBox(height: 16),
            
            const Text(
              '🔲 Outlined Buttons',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            
            // Basic Outlined Button
            CustomButton(
              buttonText: 'Secondary Action',
              buttonColor: Colors.blue,
              textColor: Colors.blue,
              buttonType: ButtonType.outlined,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Secondary action pressed!')),
                );
              },
            ),
            const SizedBox(height: 12),
            
            // Outlined Button with Custom Border
            CustomButton(
              buttonText: 'Cancel',
              buttonColor: Colors.blue,
              textColor: Colors.red,
              buttonType: ButtonType.outlined,
              borderColor: Colors.red,
              borderWidth: 2.5,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Cancelled!')),
                );
              },
            ),
            const SizedBox(height: 12),
            
            // Outlined Button with Icon
            CustomOutlineButton(
              buttonText: 'Sign Up',
              buttonColor: Colors.green,
              textColor: Colors.green,
              buttonType: ButtonType.outlined,
              icon: Icons.person_add,
              iconSize: 20,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Sign up pressed!')),
                );
              },
            ),
            const SizedBox(height: 12),
            
            // Full Width Outlined Button
            CustomOutlineButton(
              buttonText: 'Learn More',
              buttonColor: Colors.purple,
              textColor: Colors.purple,
              buttonType: ButtonType.outlined,
              icon: Icons.info_outline,
              isFullWidth: true,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Learn more pressed!')),
                );
              },
            ),
            
            const SizedBox(height: 32),
            const Divider(),
            const SizedBox(height: 16),
            
            const Text(
              '🎯 Real-World Examples',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            
            // Login Form Example
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Login Form',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    CustomButton(
                      buttonText: 'Sign In',
                      buttonColor: Colors.blue,
                      textColor: Colors.white,
                      buttonType: ButtonType.filled,
                      icon: Icons.login,
                      isFullWidth: true,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Signing in...')),
                        );
                      },
                    ),
                    const SizedBox(height: 8),
                    CustomButton(
                      buttonText: 'Create Account',
                      buttonColor: Colors.blue,
                      textColor: Colors.blue,
                      buttonType: ButtonType.outlined,
                      isFullWidth: true,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Create account pressed!')),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Action Buttons Example
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Action Buttons',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            buttonText: 'Save',
                            buttonColor: Colors.green,
                            textColor: Colors.white,
                            buttonType: ButtonType.filled,
                            icon: Icons.save,
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Saved!')),
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: CustomButton(
                            buttonText: 'Delete',
                            buttonColor: Colors.red,
                            textColor: Colors.white,
                            buttonType: ButtonType.filled,
                            icon: Icons.delete,
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Deleted!')),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
