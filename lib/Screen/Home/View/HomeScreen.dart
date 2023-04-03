import 'package:country_json_data/Screen/Home/Provider/HomeScreenProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenProvider? homeScreenProviderfalse;
  HomeScreenProvider? homeScreenProvidertrue;

  @override
  void initState() {
    super.initState();

    getData();
  }

  Future<void> getData() async {
    await Provider.of<HomeScreenProvider>(context, listen: false).FormJson();
  }

  @override
  Widget build(BuildContext context) {
    homeScreenProviderfalse =
        Provider.of<HomeScreenProvider>(context, listen: false);
    homeScreenProvidertrue =
        Provider.of<HomeScreenProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: homeScreenProviderfalse!.CountryList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'detail',arguments: index);
              },
              child: ListTile(
                contentPadding: EdgeInsets.all(15),
                leading: Image.network(
                  "${homeScreenProviderfalse!.CountryList[index].f1!.png}",
                  height: 50,
                  width: 50,
                ),
                subtitle: Text(
                    "${homeScreenProviderfalse!.CountryList[index].status}"),
                trailing: Text(
                    "${homeScreenProviderfalse!.CountryList[index].timezones![0]}"),
                title: Text(
                    "${homeScreenProviderfalse!.CountryList[index].n1!.common}"),
              ),
            );
          },
        ),
      ),
    );
  }
}
