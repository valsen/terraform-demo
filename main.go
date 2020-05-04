package main

import (
	"fmt"
	"log"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	body := `<h1>Golang webapp running in a Docker container</h1>`
	fmt.Fprintf(w, body)
}

func main() {
	log.Print("Hello world webapp started.")

	http.HandleFunc("/", handler)

	port := "8080"

	log.Fatal(http.ListenAndServe(fmt.Sprintf(":%s", port), nil))
}
