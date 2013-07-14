clubtrain
---------

A library for scraping data about events at various Tokyo clubs and venues.

Example:
```
> require 'clubtrain'
> c = ClubTrain.new
> c.for_date(Date.new(2013,07,11))
=> [#<Event:0x00000000dc98d0
  @date=#<Date: 2013-07-11 ((2456485j,0s,0n),+0s,2299161j)>,
  @flyer=
   "http://2-5-d.jp/cms/wp-content/uploads/2013/06/rerepa_image-460x353.jpg",
  @info=
   "\r\n出演：Her Ghost Friend、cokiyu、Metome、submerse\r\nVJ：\r\nsankaku(with Her Ghost Friend)\r\n大橋史(with cokiyu)\r\nsuzukimotonori(with Metome / submerse)\r\n会場：2.5D（渋谷PARCO part1 6F）\r\n時間：OPEN 19:30 / START 20:00 / END 22:30\r\n配信ページ：http://2-5-d.jp/livestream/ \r\n観覧料：￥2,000\r\nタイムテーブル：\r\n19:30～　OPEN\r\n20:00～20:30　submerse(30min)\r\n20:35～21:05  cokiyu(30min)\r\n21:10～21:40Metome(30min)\r\n21:45～22:30 Her Ghost Friend(45min)\r\n\r\n\r\n",
  @title="Her Ghost Friend 「恋する惑星、果てしない物語」 リリパ！">,
 #<Event:0x0000000115b390
  @date=#<Date: 2013-07-11 ((2456485j,0s,0n),+0s,2299161j)>,
  @flyer="http://club-mogra.jp/images/oldies-image2011.jpg",
  @info=
   "あの頃の音に触れるたび、あの感動が鮮やかに蘇る。\n\n2003年までのアニソン・特撮ソングでお酒を楽しみませんか？\nリクエストもお気軽にぜひ！\n\n\n毎月第二・第四木曜\n18:00 OPEN\n23:00 CLOSE\nDoor \\1000（1D）\n\n■GUEST DJs\nイッキ（梟/A-Style Mania/超級覇王電影弾）\n
ねーしょん(A-HOL!C/Xi-lium)\n\n■DJsWAN（八百万機関）SO-1（天挑五輪DIVE會/oldies）シーザー（ヲタリズム/ANISON INDEX!!/oldies）\n\n※お休みのDJさんもいたりします。\n\nillustration by たいちょ（雪見温泉）",    
  @title="oldies  - 懐かしアニソンDAY!! -">]
```
