package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, `{"status": 200, "message": "ok"}`)
	})

	log.Fatal(http.ListenAndServe(":8080", nil))
}
