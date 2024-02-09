package main

import (
	"fmt"
	"net/http"
)

func successMessage(w http.ResponseWriter, req *http.Request) {
	fmt.Fprintf(w, "Successfully connected\n")
}

func main() {
	http.HandleFunc("/", successMessage)
	http.ListenAndServe(":8090", nil)
}
