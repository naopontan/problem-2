# あみだくじを作ってみよう | Let's make a Amidakuji(Ghost Leg) program (English follows Japanese)

## 問題
このセッションでは、以下の点に注意して、あみだくじを作ってみます。
+   コマンドライン引数で人数を変更できるようにする。
+   A,B,C,D,E...とラベルをつける。
+   当たり1つと横線の位置をランダムで配置する。
+   横線が複数繋がっていてはいけません。
+   隣り合う縦線が必ず横線で連結していること。

##例
```
A   B   C   D   E
|   |---|   |   |
|---|   |   |---|
|   |---|   |   |
|---|   |---|   |
|   |---|   |   |
|   |   |   |---|
|   |   |   |   |
    *
```

##間違った例1
```
A   B   C   D   E
|   |   |   |   |
|---|---|---|   |
|   |   |   |---|
|   |   |   |   |
|---|---|   |   |
|   |   |---|---|
|   |   |   |   |
        *
```

##間違った例2
```
A   B   C   D   E
|   |   |   |   |
|---|   |   |---|
|   |   |---|   |
|---|   |   |---|
|   |   |---|   |
|---|   |   |   |
|   |   |   |   |
            *
```

#応用 - ショートコーディング
セッション1と同様に、出来るだけ短い文字数でプログラムを書いてみましょう。
mapやeachなどをうまく使うと驚くほどシンプルに書けるかもしれません。



##Problem(English)

Write a program that generates [Amidakuji(Ghost Leg)](http://en.wikipedia.org/wiki/Amidakuji), 
which is a method of lottery in Japan.

It consists of vertical lines with horizontal lines connecting two adjacent vertical lines scattered randomly 
along their length; the horizontal lines are called "legs". The number of vertical lines equals the number of people 
playing, and one of the lines at the bottom has an item '*'. The specific program you'll write is as follows:

+   Given a number, it creates the same number of vertical lines.
+   Put a label (A, B, C, ...) at the top of the lines.
+   Randomly choose one line and put '*' at the bottom of the line.
+   Place horizontal lines randomely, but they cannot be one continuous line. Each of the line in the same level should be separated.
+   All of the vertical lines should be connected with one or more horizontal lines. They should not be separated.

##Example
```
A   B   C   D   E
|   |---|   |   |
|---|   |   |---|
|   |---|   |   |
|---|   |---|   |
|   |---|   |   |
|   |   |   |---|
|   |   |   |   |
    *
```

##Wrong Example 1
```
A   B   C   D   E
|   |   |   |   |
|---|---|---|   |
|   |   |   |---|
|   |   |   |   |
|---|---|   |   |
|   |   |---|---|
|   |   |   |   |
        *
```

##Wrong Example 2
```
A   B   C   D   E
|   |   |   |   |
|---|   |   |---|
|   |   |---|   |
|---|   |   |---|
|   |   |---|   |
|---|   |   |   |
|   |   |   |   |
            *
```

#Extensions - Short Coding (Code Golf)!

Nicely done! Then, you can go to the next level. 
From now, let's challenge to make the program you wrote shorter as possible as you can! 
For example, use && operator instead of if condition.
Your program may be much shorter if you use 'map' or 'each' method.


