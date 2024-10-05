import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings Navigation',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SettingsPage(),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5E6D3),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 233, 142, 100),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Setting', style: TextStyle(color: Colors.black)),
        actions: [
          TextButton(
            onPressed: () {
              // Handle logout
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text('Log out', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                _buildListTile('Security', context),
                _buildListTile('Terms and conditions', context, onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TermsAndConditionsPage(),
                    ),
                  );
                }),
                _buildListTile('Help and Support', context, onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HelpAndSupportPage(),
                    ),
                  );
                }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'We acknowledge the Traditional Owners and Custodians of Country throughout Australia. We pay our respects to all First Nations peoples and acknowledge Elders past and present.',
                style: TextStyle(color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(String title, BuildContext context, {VoidCallback? onTap}) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: ListTile(
        title: Text(title, style: TextStyle(color: Colors.black, fontSize: 18)),
        trailing: Icon(Icons.chevron_right, color: Colors.black),
        onTap: onTap,
      ),
    );
  }
}

class TermsAndConditionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5E6D3),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 233, 142, 100),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: const Color.fromARGB(255, 0, 0, 0)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Terms and Conditions', style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                _buildListTile('Store Points', context),
                _buildListTile('Terms of Use', context),
                _buildListTile('Privacy Policy', context),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'We acknowledge the Traditional Owners and Custodians of Country throughout Australia. We pay our respects to all First Nations peoples and acknowledge Elders past and present.',
                style: TextStyle(color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(String title, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: ListTile(
        title: Text(title, style: TextStyle(color: Colors.black, fontSize: 18)),
        trailing: Icon(Icons.chevron_right, color: Colors.black),
        onTap: () {
          // Handle tap, add more pages if necessary
        },
      ),
    );
  }
}

class HelpAndSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5E6D3),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 233, 142, 100),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: const Color.fromARGB(255, 0, 0, 0)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Help and Support', style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                _buildListTile('Frequently asked Questions(FAQs)', context),
                _buildListTile('Close Account', context),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'We acknowledge the Traditional Owners and Custodians of Country throughout Australia. We pay our respects to all First Nations peoples and acknowledge Elders past and present.',
                style: TextStyle(color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(String title, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: ListTile(
        title: Text(title, style: TextStyle(color: Colors.black, fontSize: 18)),
        trailing: Icon(Icons.chevron_right, color: Colors.black),
        onTap: () {
          // Handle tap, add more pages if necessary
        },
      ),
    );
  }
}
