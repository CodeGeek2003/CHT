import 'package:flutter/material.dart';
import '../../theme/colors.dart';

class FollowupPage extends StatefulWidget {
  @override
  _FollowupPageState createState() => _FollowupPageState();
}

class _FollowupPageState extends State<FollowupPage> {
  final _medicinNameController = TextEditingController();
  final _timeController = TextEditingController();
  final _freqController = TextEditingController();
  List<Map<String, dynamic>> _medicinsList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Time')),
                  DataColumn(label: Text('Status')),
                ],
                rows: _medicinsList
                    .map((medicin) => DataRow(cells: [
                  DataCell(Text(medicin['name'])),
                  DataCell(Text(medicin['time'])),
                  DataCell(
                    Checkbox(
                      value: false,
                      onChanged: (newValue) {
                        // update the status of the medication
                      },
                    ),
                  ),
                ]))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: buttoncolor,
        onPressed: () => _showAddMedicinDialog(),
        tooltip: 'Add Medicin',
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }

  void _showAddMedicinDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Medicin'),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _medicinNameController,
                  decoration: InputDecoration(
                    hintText: "Medicine Name",
                  ),
                ),
                TextField(
                  controller: _timeController,
                  decoration: InputDecoration(
                    hintText: "Time",
                  ),
                ),
                TextField(
                  controller: _freqController,
                  decoration: InputDecoration(
                    hintText: "Frequency",
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                _medicinNameController.clear();
                _timeController.clear();
                _freqController.clear();
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                setState(() {
                  String medicinName = _medicinNameController.text;
                  String time = _timeController.text;
                  String freq = _freqController.text;
                  for (int i = 0; i < int.parse(freq); i++) {
                    _medicinsList.add({
                      'name': medicinName,
                      'freq': freq,
                      'time': time
                    });
                  }
                  _medicinNameController.clear();
                  _timeController.clear();
                  _freqController.clear();
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
