import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AquaApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 121, 204, 243),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // email textfeild
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    border: Border.all(color: Color.fromARGB(255, 7, 8, 46)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email:',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an email';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    border: Border.all(color: Color.fromARGB(255, 7, 8, 46)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password:',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // wrap the form fields with a Form widget
              Form(
                key: _formKey, // assign the _formKey here
                child: Column(
                  children: [
                    // sign in button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => ConnectedPage()),
                            );
                          }
                        },
                        child: Text('Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ConnectedPage extends StatefulWidget {
  const ConnectedPage({super.key});

  @override
  State<ConnectedPage> createState() => _ConnectedPageState();
}

class _ConnectedPageState extends State<ConnectedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AquaApp'),
        backgroundColor: Color.fromARGB(255, 24, 137, 194),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Welcome to AquaApp',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              shrinkWrap: true,
              children: [
                NavigationLogoWidget(
                  icon: Icons.water,
                  title: 'Water Services',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ServicePage()),
                    );
                  },
                ),
                NavigationLogoWidget(
                  icon: Icons.receipt,
                  title: 'Billing',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BillingPage()),
                    );
                  },
                ),
                NavigationLogoWidget(
                  icon: Icons.info,
                 title: 'Water Info',
                  onPressed: () {
                    // Navigate to Water Info page
                  },
                ),
                NavigationLogoWidget(
                  icon: Icons.settings,
                  title: 'Account Settings',
                  onPressed:() {
                    // Navigate to Account Settings page
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services'),
        backgroundColor: Color.fromARGB(255, 24, 137, 194),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 20),
            Text(
              'Select a Service',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ServiceWidget(
              title: 'New Connection',
              onPressed: () {
                // Navigate to New Connection page
              },
            ),
            ServiceWidget(
              title: 'Reconnection',
              onPressed: () {
                // Navigate to Reconnection page
              },
            ),
            ServiceWidget(
              title: 'Disconnection',
              onPressed: () {
                // Navigate to Disconnection page
              },
            ),
            ServiceWidget(
              title: 'Relocation',
              onPressed: () {
                // Navigate to Relocation page
              },
            ),
            ServiceWidget(
              title: 'Change Meter',
              onPressed: () {
                // Navigate to Change Meter page
              },
            ),
            ServiceWidget(
              title: 'Service Line Minor Repair',
              onPressed: () {
                // Navigate to Service Line Minor Repair page
              },
            ),
            ServiceWidget(
              title: 'Service Line Major Repair',
              onPressed: () {
                // Navigate to Service Line Major Repair page
              },
            ),
            ServiceWidget(
              title: 'Mainline Minor Repair',
              onPressed: () {
                // Navigate to Mainline Minor Repair page
              },
            ),
            ServiceWidget(
              title: 'Mainline Major Repair',
              onPressed: () {
                // Navigate to Mainline Major Repair page
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const ServiceWidget({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        trailing: Icon(Icons.arrow_forward),
        onTap: onPressed,
      ),
    );
  }
}

class NavigationLogoWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  const NavigationLogoWidget({super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class BillingPage extends StatefulWidget {
  const BillingPage({super.key});

  @override
  State<BillingPage> createState() => _BillingPageState();
}

class _BillingPageState extends State<BillingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Billing'),
        backgroundColor: Color.fromARGB(255, 24, 137, 194),
      ),
      body: SafeArea(
        child: ListView(
          children: const [
            SizedBox(height: 20),
            Text(
              'Billing Details',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            BillingDetailsWidget(),
            SizedBox(height: 20),
            Text(
              'Billing Transaction History',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            BillingTransactionHistoryWidget(),
          ],
        ),
      ),
    );
  }
}

class BillingDetailsWidget extends StatelessWidget {
  const BillingDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            Text('Billing Details'),
            Text('Account Number: 1234567890'),
            Text('Billing Cycle: Monthly'),
            Text('Due Date: 2023-02-28'),
          ],
        ),
),
    );
  }
}

class BillingTransactionHistoryWidget extends StatelessWidget {
  const BillingTransactionHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            Text('Billing Transaction History'),
            Text('2023-01-28: Payment of \$100.00'),
            Text('2022-12-28: Payment of \$100.00'),
            Text('2022-11-28: Payment of \$100.00'),
          ],
        ),
      ),
    );
  }
}