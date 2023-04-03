import 'package:country_json_data/Screen/Home/Provider/HomeScreenProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  HomeScreenProvider? homeScreenProviderfalse;
  HomeScreenProvider? homeScreenProvidertrue;

  @override
  Widget build(BuildContext context) {
    dynamic index = ModalRoute.of(context)!.settings.arguments;
    homeScreenProviderfalse =
        Provider.of<HomeScreenProvider>(context, listen: false);
    homeScreenProvidertrue =
        Provider.of<HomeScreenProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.black45,
              child: Image.network(
                "${homeScreenProviderfalse!.CountryList[index].f1!.png}",
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 80,top: 20),
              child: Row(
                children: [
                  Text(
                    "Name :- ",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${homeScreenProviderfalse!.CountryList[0].n1!.official}",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 80,top: 5),
              child: Row(
                children: [
                  Text(
                    "independent :- ",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${homeScreenProviderfalse!.CountryList[0].independent}",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 80,top: 5),
              child: Row(
                children: [
                  Text(
                    "independent :- ",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${homeScreenProviderfalse!.CountryList[0].area}",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
