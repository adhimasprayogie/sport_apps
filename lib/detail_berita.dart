import 'package:flutter/material.dart';

class DetailPageBerita extends StatefulWidget {
  List list;
  int index;
  DetailPageBerita({this.list, this.index});

  @override
  _DetailPageBeritaState createState() => _DetailPageBeritaState();
}

class _DetailPageBeritaState extends State<DetailPageBerita> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('${widget.list[widget.index]['judul_berita']}'),
        backgroundColor: Colors.green,
      ),
      body: new ListView(
        children: <Widget>[
          new Image.network("http://192.168.42.26/server_olahraga/gambar/" +
              widget.list[widget.index]['gbr_berita']),
          new Container(
            padding: const EdgeInsets.all(32.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                    child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: new Text(
                        'Judul : ' + widget.list[widget.index]['judul_berita'],
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    new Text(
                      'Tanggal : ' + widget.list[widget.index]['tgl_berita'],
                      style: new TextStyle(color: Colors.green),
                    )
                  ],
                )),
                new Icon(
                  Icons.star,
                  color: Colors.green,
                )
              ],
            ),
          ),
          new Container(
            padding: const EdgeInsets.all(32.0),
            child: new Text(
              widget.list[widget.index]['isi_berita'],
              softWrap: true,
            ),
          )
        ],
      ),
    );
  }
}
