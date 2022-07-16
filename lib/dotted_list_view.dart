import 'package:dotted_line/dotted_line.dart';
import 'package:dotted_list_view/models/profile.dart';
import 'package:flutter/material.dart';

class DottedListView extends StatelessWidget {
  const DottedListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dotted List View'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Row(
          children: [
            Column(
              children: const [
                Icon(Icons.keyboard_double_arrow_down_rounded),
                SizedBox(
                  height: 8,
                ),
                Expanded(
                  child: DottedLine(
                    dashLength: 10,
                    dashColor: Colors.black,
                    direction: Axis.vertical,
                  ),
                ),
                Icon(
                  Icons.keyboard_double_arrow_up_rounded,
                )
              ],
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: profileList.length,
                itemBuilder: (BuildContext context, index) {
                  return ProfileList(
                    profiles: profileList[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileList extends StatelessWidget {
  final Profile profiles;
  const ProfileList({Key? key, required this.profiles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
         
          Container(
            width: double.infinity,
            height: 80,
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Colors.white70,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Email: ',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.italic,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            profiles.email,
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const Text(
                            'Department: ',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.italic,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            profiles.department,
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
