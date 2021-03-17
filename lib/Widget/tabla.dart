import 'package:flutter/material.dart';
import 'package:molycop_dashboard/models/area.dart';
import 'package:intl/intl.dart';

 Widget tabledataHopper(List<DevicesModel> devicemodel){
    const style = TextStyle(fontStyle: FontStyle.italic);
    return devicemodel == null
        ? CircularProgressIndicator()
        : Card(
          child: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text('Hopper 1 Ton', style: style,),
          ),
          // DataColumn(
            // label: Text('Hopper 2 Ton',style: style,),
          // ),
          DataColumn(
            label: Text('Date', style: style,),
          ),
        ],
        rows: devicemodel
                    .map(
                      (d) => DataRow(
                        cells:[
                          DataCell(
                            Text(d.sales.toString()),
                          ),
                          // DataCell(
                            // Text(d.var2valor.toString()),
                          // ),
                          DataCell(
                            Text(DateFormat('dd/MM/yyyy - kk:mm').format(d.time).toString()),
                          ),
                          // Text(d.reference.documentID + ' - ' + d.var1name),
                          // Text(d.time.toString())
                        ],
                      ),
                    ).toList(),
      ),
    );
  }