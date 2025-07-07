import 'package:role_based_login/app_importer.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: IconButton(onPressed: (){
        Navigator.pop(context);},
            icon: Icon(Icons.arrow_back, color: Colors.white,)),
        title: const Text('User Dashboard', style: TextStyle(color: Colors.white),),
        centerTitle: true,
    ),
    body: const Center(child: Text('Welcome User!')),
  );
}