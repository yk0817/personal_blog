// 最大値
let arrD = [1, 2, 3, 4, 5];
// 配列を引数に持つことが出来る。
console.log(Math.max(...arrD));
// 通常のケースだと
console.log(Math.max.apply(null, arrD))
// 分割代入
// 配列やオブジェクトの要素を取り出して個別の変数に代入する
let aryE = [1, 2, 3];
let [a, b, c] = aryE;

console.log(a);
console.log(b);
console.log(c);