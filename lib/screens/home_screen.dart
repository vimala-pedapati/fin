import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/data_view_model.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DataViewModel dataViewModel = context.watch<DataViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("FinInfoCom "),
        actions:  [
          DropdownButton<String>(
            items: <String>['Sort by Name', 'Sort by Age', 'Sort by City'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            icon: const  Icon(
              Icons.more_vert, color: Colors.white,
            ) ,
            onChanged: (value) {
              debugPrint(value);
              if(value == "Sort by Name"){
                dataViewModel.sortByName();
              }else if (value == "Sort by Age"){
                dataViewModel.sortByAge();
              }else{
                dataViewModel.sortByCity();
              }

            },
            elevation: 0,
            iconEnabledColor: Colors.transparent,

          ),
          const  SizedBox(width: 20,)
        ],
      ),
      body: ListView.builder(
          itemCount: dataViewModel.listOfPersons.length,
          itemBuilder: (context, index){
            return  ListTile(
                title: Text("Name : ${dataViewModel.listOfPersons[index].name}", style: const TextStyle(
                    fontSize: 20
                )),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Age : ${dataViewModel.listOfPersons[index].age.toString()}", style: const TextStyle(
                        fontSize: 20
                    ),),
                    Text("City : ${dataViewModel.listOfPersons[index].city}",style: const TextStyle(
                        fontSize: 20
                    )),
                    const Divider(
                      thickness: 5,
                    )
                  ],
                )
            );
          }),
    );
  }
}
