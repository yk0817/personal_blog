// 配列をpushする。
let arrA = [0, 1, 2];
let arrB = [3, 4, 5];

// error 引数に配列を持てない
arryA.push(arrB);
// スプレッド演算子(...)を用いると
// iterableオブジェクト(順番に値を取り出せるオブジェクト)をその場で展開してくれる
arrA.push(...arrB);
// 下記と動きは同じ
// arrA.push(3, 4, 5);

console.log(arrA);

// 通常のケースだと
arrC = Array.prototype.push(arrA, arrB)
console.log(arrC);

// 最大値
let arrD = [1, 2, 3, 4, 5];
// 配列を引数に持つことが出来る。
console.log(Math.max(...arrD));
// 通常のケースだと
console.log(Math.max.apply(null, arrD))




