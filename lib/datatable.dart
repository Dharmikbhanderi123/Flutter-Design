//import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:data_table_2/data_table_2.dart';

class table extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SCOREBOARD"),
        ),
        body: DataTable2(
            border: TableBorder.all(),
            columnSpacing: 12,
            horizontalMargin: 12,
            minWidth: 600,
            columns: [
              DataColumn(
                  label: Text(
                "ID",
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
              )),
              DataColumn(
                  label: Text(
                "Class no",
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
              )),
              
            ],
            rows: <DataRow>[
              DataRow(cells: <DataCell>[
                DataCell(Text("Ishan Kishan")),
                DataCell(Text("54")),
                DataCell(Text("35")),
                DataCell(Text("5")),
                DataCell(Text("2")),
                DataCell(Text("154.29")),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text("Ruturaj Gaikwad")),
                DataCell(Text("57")),
                DataCell(Text("35")),
                DataCell(Text("7")),
                DataCell(Text("2")),
                DataCell(Text("162.86")),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text("Shreyas Iyer")),
                DataCell(Text("59")),
                DataCell(Text("26")),
                DataCell(Text("8")),
                DataCell(Text("3")),
                DataCell(Text("226.92")),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text("Hardik Pandya")),
                DataCell(Text("75")),
                DataCell(Text("24")),
                DataCell(Text("9")),
                DataCell(Text("6")),
                DataCell(Text("312.50")),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text("TOTAL")),
                DataCell(Text("245")),
                DataCell(Text("120")),
                DataCell(Text("29")),
                DataCell(Text("13")),
                DataCell(Text("204.17")),
              ]),
            ]),
      ),
    );
  }
}
