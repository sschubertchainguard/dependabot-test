FROM cgr.dev/scorwin.dev/go-msft-fips:1.23.2.1

WORKDIR /app

RUN go mod init hello-world
RUN cat <<EOF > main.go
package main
import "fmt"
func main() {
    fmt.Println("Hello, World!")
}
EOF

RUN go build -o hello-world

ENTRYPOINT ["/app/hello-world"]
