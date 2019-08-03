import 'package:flutter/material.dart';

class CreateList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CreateListState();
  }
}

class _CreateListState extends State<CreateList> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(child: Image.asset('assets/1st.png')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Image.asset('assets/2nd.png'),
              ),
            )
          ],
        ),
        Row(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Subjects",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.blue),
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: _buildList(),
          ),
        )
      ],
    );
  }

  Widget _buildList() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _tile('Mental Ability', 0.0, Icons.favorite),
        ),
        Divider(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _tile('Physics', 0.07, Icons.games),
        ),
        Divider(height: 10,),
        _tile('Chemistry', 0.2, Icons.theaters),
        Divider(height: 10,),
        _tile('Mathematics', 0.1, Icons.security),
        Divider(height: 10,),
        _tile('Biology', 0.0, Icons.picture_in_picture),
        Divider(height: 10,),
        _tile('English', 0.0, Icons.theaters),
        Divider(),
      ],
    );
  }

  ListTile _tile(String title, double prog, IconData icon) => ListTile(
    contentPadding: EdgeInsets.all(8.0),
    title: Text(title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    subtitle: LinearProgressIndicator(
      value: prog,
      semanticsLabel: 'Progress',
      semanticsValue: '1',
    ),
    leading: Icon(
      icon,
      color: Colors.blue[100],
      size: 72,
    ),
  );
}