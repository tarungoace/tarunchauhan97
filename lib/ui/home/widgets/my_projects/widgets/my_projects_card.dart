import 'package:flutter/material.dart';
import 'package:personal_website/provider/tagged_list_provider.dart';
import 'package:personal_website/ui/widgets/custom_elevated_button.dart';

class MyProjectsCard extends StatelessWidget {
  const MyProjectsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              child: Image.asset(
                'assets/images/background1.jpg',
              ),
              decoration: BoxDecoration(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomElevatedButton(
                  onPressed: () {},
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                  foregroundColor: Theme.of(context).primaryColorLight,
                  backgroundColor: Theme.of(context).primaryColorLight,
                  elevation: 0,
                  child: Text("Github"),
                ),
                CustomElevatedButton(
                  onPressed: () {},
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                  foregroundColor: Theme.of(context).primaryColorLight,
                  backgroundColor: Colors.black12,
                  elevation: 0,
                  child: Text("Website"),
                ),
                CustomElevatedButton(
                  onPressed: () {},
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                  foregroundColor: Theme.of(context).primaryColorLight,
                  backgroundColor: Colors.black12,
                  elevation: 0,
                  child: Text("Playstore"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
