protocol ScheduleDelagete {
  func gotoSchool()
  func lunchTime()
  func afterSchool()
}

class Hero {
    var girlFriend:ScheduleDelagete? = nil
    func oneday() {
        if let gf = self.girlFriend {
          gf.gotoSchool()
          gf.lunchTime()
          gf.afterSchool()
        } else {
          print("一人で自転車で学校に行く")
          print("お弁当はコンビニ弁当")
          print("帰りはビデオ屋に行く")
        }
    }
}
class girlFriend : ScheduleDelagete {
  func gotoSchool(){
    print("電車で学校に行く")
  }
  func lunchTime(){
    print("お弁当はエビフライ")
  }
  func afterSchool() {
    print("帰りは映画に行く")
  }
}

var hero = Hero()
var girl = girlFriend()

print("*彼女ができる前の生活")
hero.oneday()
hero.girlFriend = girl
print("")
print("彼女ができる生活")
hero.oneday()
