import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
    //required this.thumbnail,
    required this.title,
    required this.memo,
    required this.createdAt,
    required this.expires,
    // TODO:createdAtとexpiresを作成して蓄積の管理をする
  });

  //final Widget thumbnail;
  final String title;
  final String memo;
  final DateTime createdAt;
  final int expires;

  // TODO:periodは受け取るタイミングでstartDateとendDateを比較して導出する関数を作成して表示に対応するかDescriptionに渡すタイミングでも良さそう
  String _makePeriod(DateTime createdAt, int expires) {
    // 終了予定時刻を計算して、現在時刻との差で期限を設定する形にする
    return 'ほげ日期限切れ';
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                child: Text(title, style: TextStyle(color: Colors.black, fontSize: 30),),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal:16, vertical: 8),
                alignment: Alignment.topLeft,
                // TODO: アイコンと進行中とかのステータスも取りたい感じはある
                child: Text(_makePeriod(createdAt, expires)),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal:16, vertical: 8),
                alignment: Alignment.topLeft,
                child: Text(memo),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal:16, vertical: 8),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.archive),
                  label: Text('アーカイブ'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:16, vertical: 8),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.done),
                  label: Text('完了'),
                ),
              ),
            ],
          ),
        ],
      ),
      color: Colors.white, // Card自体の色
      margin: const EdgeInsets.all(30),
      elevation: 8, // 影の離れ具合
      shadowColor: Colors.black ,// 影の色
      shape: RoundedRectangleBorder( // 枠線を変更できる
        borderRadius: BorderRadius.circular(10),
      ),
    );
      /*
      ListTile(
        leading: Icon(Icons.add),
        title: Text(title),
        subtitle: Text(memo),
      ),*/
      /*
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /*
          Expanded(
            flex: 2,
            child: thumbnail,
          ),
          */
          /*
          Expanded(
            flex: 3,
            child: _TaskDescription(
              title: title,
              memo: memo,
              period: _makePeriod(createdAt, expires),
            ),
          ),
          const Icon(
            Icons.more_vert,
            size: 16.0,
          ),
        ],
        */
      ),
    );
      */
  }
}

class _TaskDescription extends StatelessWidget {
  const _TaskDescription({
    required this.title,
    required this.memo,
    required this.period,
  });

  final String title;
  final String memo;
  final String period;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            memo,
            style: const TextStyle(fontSize: 10.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            //'$viewCount views',
            period,
            style: const TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }
}