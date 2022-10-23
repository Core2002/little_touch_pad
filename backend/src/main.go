package main

import (
	"github.com/gin-gonic/gin"
	"github.com/go-vgo/robotgo"
)

func main() {
	gin.SetMode(gin.ReleaseMode)
	r := gin.Default()
	r.GET("/TapDown/images/D.jpg", func(c *gin.Context) {
		c.String(200, "200 ok, D TapDown")
		robotgo.KeyToggle(`d`, `down`)
	})
	r.GET("/TapDown/images/F.jpg", func(c *gin.Context) {
		c.String(200, "200 ok, F TapDown")
		robotgo.KeyToggle(`f`, `down`)
	})
	r.GET("/TapDown/images/J.jpg", func(c *gin.Context) {
		c.String(200, "200 ok, J TapDown")
		robotgo.KeyToggle(`j`, `down`)
	})
	r.GET("/TapDown/images/K.jpg", func(c *gin.Context) {
		c.String(200, "200 ok, K TapDown")
		robotgo.KeyToggle(`k`, `down`)
	})

	r.GET("/TapUp/images/D.jpg", func(c *gin.Context) {
		c.String(200, "200 ok, D TapUp")
		robotgo.KeyToggle(`d`, `up`)
	})
	r.GET("/TapUp/images/F.jpg", func(c *gin.Context) {
		c.String(200, "200 ok, F TapUp")
		robotgo.KeyToggle(`f`, `up`)
	})
	r.GET("/TapUp/images/J.jpg", func(c *gin.Context) {
		c.String(200, "200 ok, J TapUp")
		robotgo.KeyToggle(`j`, `up`)
	})
	r.GET("/TapUp/images/K.jpg", func(c *gin.Context) {
		c.String(200, "200 ok, K TapUp")
		robotgo.KeyToggle(`k`, `up`)
	})
	r.Run(":1145")
}
