import 'package:flutter/material.dart';
class IndexPage extends StatefulWidget {
  IndexPage({Key key,this.title}):super(key: key);
  final String title;
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List<String> eventList = List<String>();
  @override
  void initState() {
    super.initState();
    eventList.add("Context");
    eventList.add("Container");
    eventList.add("ConstrainedBox");
    eventList.add("FittedBox");
    eventList.add("FractionallySizedBox");
    eventList.add("Baseline");
    eventList.add("TextImageIcon");
    eventList.add("Button");
    eventList.add("Flex");
    eventList.add("Wrap");
    eventList.add("Stack");
    eventList.add("Row Column");
    eventList.add("AppBar");
    eventList.add("CustomAppBar");
    eventList.add("ListView");
    eventList.add("CustomScrollView");
    eventList.add("GridView");
    eventList.add("InheritedWidget");
    eventList.add("AlertDialogWidget");
    eventList.add("BottomSheetWidget");
    eventList.add("TextField");
    eventList.add("TextFieldKeyboardFix");
    eventList.add("TabBar");
    eventList.add("ComplexTabBarView");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: ListView.builder(
        itemCount: eventList.length,
        itemBuilder: (context, index){
          return ListTile(
            title: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/${eventList[index]}");
              },
              child: Text(eventList[index]),
            ),
          );
        },
      ),
    );
  }
}