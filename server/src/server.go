package main

import (
  "github.com/go-martini/martini"
  //"github.com/martini-contrib/cors"
)

func main() {
  m := martini.Classic()
  m.Use(martini.Static("assets"))
  // m.Use(cors.Allow(&cors.Options{
  //   AllowOrigins:     []string{"http://localhost:9000"},
  //   AllowMethods:     []string{"PUT", "PATCH", "POST", "OPTIONS"},
  //   AllowHeaders:     []string{"Origin"},
  //   ExposeHeaders:    []string{"Content-Length"},
  //   AllowCredentials: true,
  // }))
  m.Get("/", func() string {
    return "Hello world!"
  })
  // allowCORSHandler := cors.Allow(&cors.Options{
  //   AllowOrigins:     []string{"http://localhost:9000"},
  //   AllowMethods:     []string{"PUT", "PATCH", "POST", "OPTIONS"},
  //   AllowHeaders:     []string{"Origin"},
  //   ExposeHeaders:    []string{"Content-Length"},
  //   AllowCredentials: true,
  // })

  m.Post("/api/v1/user/register", func() string {
    return "ok"
  })

  m.Post("/api/v1/user/login", func() string {
    return "ok"
  })

  //m.Run()
  // port := os.Getenv("PORT")
	// if len(port) == 0 {
	// 	port = "3000"
	// }
  //
	// host := os.Getenv("HOST")

	m.RunOnAddr("localhost" + ":" + "8000")
}
