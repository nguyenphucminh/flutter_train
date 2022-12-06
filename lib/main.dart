import 'package:flutter/material.dart';  
  
void main() => runApp(MaterialApp(  
  home: MyApp(),  
));  
  
class MyApp extends StatefulWidget {  
  @override  
  _MyAppState createState() => _MyAppState();  
}  
  
class _MyAppState extends State<MyApp> {  
  final List<ListItem> _dropdownItems = [  
    ListItem(1, "1"),  
    ListItem(2, "2"),  
    ListItem(3, "3"),  
    ListItem(4, "4")  
  ];  
  
  List<DropdownMenuItem<ListItem>> ?_dropdownMenuItems;  
  ListItem ? _itemSelected;  
  
  void initState() {  
    super.initState();  
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);  
    _itemSelected = _dropdownMenuItems?[1].value;  
  }  
  
  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {  
    List<DropdownMenuItem<ListItem>> items = List.empty(growable: true);  
    for (ListItem listItem in listItems) {  
      items.add(  
        DropdownMenuItem(  
          child: Text(listItem.name),  
          value: listItem,  
        ),  
      );  
    }  
    return items;  
  }  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text("DropDown Button Example"),  
      ),  
      body: Column(  
        children: <Widget>[  
          Padding(  
            padding: const EdgeInsets.all(10.0),  
            child: Container(  
              padding: const EdgeInsets.all(5.0),  
              decoration: BoxDecoration(  
                  color: Colors.greenAccent,  
                  border: Border.all()),  
              child: DropdownButtonHideUnderline(  
                child: DropdownButton(  
                    value: _itemSelected,  
                    items: _dropdownMenuItems,  
                    onChanged: (value) {  
                      setState(() {  
                        _itemSelected = value;  
                      });  
                    }),  
              ),  
            ),  
          ),  
          Text("We have selected ${_itemSelected?.name}"),  
        ],  
      ),  
    );  
  }  
}  
  
class ListItem {  
  int value;  
  String name;  
  
  ListItem(this.value, this.name);  
}  