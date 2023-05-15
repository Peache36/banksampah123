import 'package:flutter/material.dart';
// import 'package:flutter_google_places/flutter_google_places.dart';
// import 'package:google_maps_webservice/places.dart';

class JemputSampah extends StatefulWidget {
  @override
  _JemputSampahState createState() => _JemputSampahState();
}

class _JemputSampahState extends State<JemputSampah> {
  TextEditingController _locationController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _messageController = TextEditingController();

  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Penjemputan'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Alamat Penjemputan',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                controller: _locationController,
                decoration: InputDecoration(
                  hintText: 'Ketik alamat atau klik ikon pencarian',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () async {
                      // Prediction p = await PlacesAutocomplete.show(
                      //   context: context,
                      //   apiKey: '<YOUR_API_KEY>',
                      //   mode: Mode.overlay,
                      //   language: 'id',
                      // );
                      // if (p != null) {
                      //   _locationController.text = p.description;
                      // }
                    },
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Nama Penerima',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Masukkan nama penerima',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Nomor Telepon',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Masukkan nomor telepon penerima',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Pesan Tambahan',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                controller: _messageController,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Masukkan pesan tambahan',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Tanggal Penjemputan',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              GestureDetector(
                onTap: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now().add(Duration(days: 1)),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(Duration(days: 30)),
                  );

                  if (picked != null && picked != _selectedDate) {
                    setState(() {
                      _selectedDate = picked;
                    });
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _selectedDate == null
                            ? 'Pilih Tanggal'
                            : '${_selectedDate.day}-${_selectedDate.month}-${_selectedDate.year}',
                      ),
                      Icon(Icons.calendar_today),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Waktu Penjemputan',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              GestureDetector(
                onTap: () async {
                  final TimeOfDay? picked = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (picked != null && picked != _selectedTime) {
                    setState(() {
                      _selectedTime = picked;
                    });
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _selectedTime == null
                            ? 'Pilih Waktu'
                            : '${_selectedTime.hourOfPeriod}:${_selectedTime.minute} ${_selectedTime.period.toString().split('.')[1]}',
                      ),
                      Icon(Icons.access_time),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
// fungsi untuk menghandle saat tombol submit ditekan
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
