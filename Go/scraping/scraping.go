package main

import (
	"fmt"
	"net/url"
	"strconv"
	"strings"

	"github.com/PuerkitoBio/goquery"
)

var page_num = 1

func main() {

	doc, err := goquery.NewDocument(set_url(page_num))
	if err != nil {
		fmt.Println(err)
	}
	u := url.URL{}
	u.Scheme = doc.Url.Scheme
	u.Host = doc.Url.Host

	doc.Find(".lister-item").Each(func(i int, ss *goquery.Selection) {
		parse(ss)
	})

	next_page_text := doc.Find(".next-page").Text()
	if strings.HasPrefix(next_page_text, "Next") {
		page_num += 1
		main()
	} else {
		fmt.Println("終了")
		return
	}
}

func set_url(page_num int) string {
	url_ary := []string{
		"https://www.imdb.com/search/title?genres=romance&explore=title_type,genres&pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=e0da8c98-35e8-4ebd-8e86-e7d39c92730c&pf_rd_r=ATAJJQ8VTFSWKQRDGV83&pf_rd_s=center-2&pf_rd_t=15051&pf_rd_i=genre&title_type=tvSeries&view=advanced&sort=release_date,desc&page=",
		strconv.Itoa(page_num),
		"&ref_=adv_nxt"}
	return strings.Join(url_ary, "")
}

func parse(ss *goquery.Selection) {
	ss.Each(func(i int, s *goquery.Selection) {
		body_node := s.Find(".lister-item-header").Find("a")
		fmt.Println(body_node.Text())
		fmt.Println(body_node.Attr("href"))
	})
}
