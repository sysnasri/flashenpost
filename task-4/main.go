package main

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"net/http"
	"sort"
)

// Movie represents a single movie data structure
type Movie struct {
	Title string `json:"Title"`
}

// APIResponse represents the structure of the API response
type APIResponse struct {
	Page       int     `json:"page"`
	PerPage    int     `json:"per_page"`
	Total      int     `json:"total"`
	TotalPages int     `json:"total_pages"`
	Data       []Movie `json:"data"`
}

func getMovieTitles(substr string) ([]string, error) {
	var titles []string
	page := 1
	totalPages := 1

	for page <= totalPages {
		url := fmt.Sprintf("https://jsonmock.hackerrank.com/api/movies/search/?Title=%s&page=%d", substr, page)
		resp, err := http.Get(url)
		if err != nil {
			return nil, err
		}
		defer resp.Body.Close()

		body, err := ioutil.ReadAll(resp.Body)
		if err != nil {
			return nil, err
		}

		var apiResponse APIResponse
		err = json.Unmarshal(body, &apiResponse)
		if err != nil {
			return nil, err
		}

		for _, movie := range apiResponse.Data {
			titles = append(titles, movie.Title)
		}

		totalPages = apiResponse.TotalPages
		page++
	}

	sort.Strings(titles)
	return titles, nil
}

func main() {
	substr := "Superman"
	titles, err := getMovieTitles(substr)
	if err != nil {
		fmt.Println("Error:", err)
		return
	}

	for _, title := range titles {
		fmt.Println(title)
	}
}
