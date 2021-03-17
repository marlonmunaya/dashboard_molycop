// import 'dart:ffi';

// import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mqtt_client/mqtt_client.dart' as mqtt;

class Area{
  String area;
  List<String> subarea = <String>[];
  List<Listsubareas> subareas;
  bool isExpanded = false;

  Area({this.isExpanded,this.area, this.subarea, this.subareas});

}
class Listsubareas{
  final String subarea;
  final List<Config> conf;
  Listsubareas({this.conf,this.subarea});
}

class Config{
  final String label;
  final String topic;
  final double min;
  final double max;
   double data;
  final String unit;
  final mqtt.MqttQos qos;

  Config({this.label,this.min, this.max, this.qos, this.unit,this.topic,this.data});

}

class DevicesModel{
  
  final double sales;
  final double var2valor;
  // final String var1name;
  final Timestamp tiempo;
  final DateTime time;
  // final TimeSeriesSales serie;
  // final Timestamp
  final DocumentReference reference;

  DevicesModel.fromMap(Map<String, dynamic> map, {this.reference})
      : 
      // assert(map['fecha']  != null),
        sales = map['var1valor'],
        var2valor = map['var2valor'],
        // var1name = map['var1name'],
        tiempo = map['fecha'],
        time = (map['fecha']).toDate()
        ;

  DevicesModel.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);



  String toString() => "$sales;$time\n";

}
