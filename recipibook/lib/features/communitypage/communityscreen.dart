import 'package:flutter/material.dart';

class CommunityServer extends StatefulWidget {
  const CommunityServer({Key? key}) : super(key: key);
  static const routeName = '/communityserver';
  @override
  State<CommunityServer> createState() => _CommunityServerState();
}

class _CommunityServerState extends State<CommunityServer> {
  String name = "gautam";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Community chat')),
      body: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Type here....",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2))),
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.send))
              ],
            ),
          )
        ],
      ),
    );
  }
}
