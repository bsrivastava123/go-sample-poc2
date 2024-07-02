package main

import (
	"fmt"
	"strings"

	"github.com/pborman/uuid"
)

func Hello() string {
	uuidWithHyphen := uuid.NewRandom()
	uuid := strings.Replace(uuidWithHyphen.String(), "-", "", -1)
	fmt.Println(uuid)

	return "Hello, world1"

}

func main() {
	fmt.Println(Hello())
}
