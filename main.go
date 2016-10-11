package main

import (
	"fmt"
	"log"
	"net/http"
	"os/exec"

	"github.com/gocraft/web"
)

type Context struct {
	HelloCount int
}

func (c *Context) GetContainers(rw web.ResponseWriter, req *web.Request) {
	o, err := exec.Command("docker", "ps", "-a").Output()
	if err != nil {
		log.Fatal(err)
	}

	fmt.Fprint(rw, string(o))
}

func main() {
	router := web.New(Context{}). // Create your router
					Middleware(web.LoggerMiddleware).
					Middleware(web.ShowErrorsMiddleware).
					Get("/containers", (*Context).GetContainers)
	http.ListenAndServe(":8080", router)
}
