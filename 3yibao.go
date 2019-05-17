package main

import (
	"net/http"

	"github.com/labstack/echo"
	"github.com/labstack/echo/middleware"
)

func main() {
	// Echo instance
	e := echo.New()

	// Middleware
	e.Use(middleware.Logger())
	e.Use(middleware.Recover())

	// Routes
	e.GET("/api", apiH)
	e.GET("/index", rdIndex)

	e.Static("/*", "statics")

	// Start server
	e.Logger.Fatal(e.Start(":3399"))
}

// Handler
func apiH(c echo.Context) error {
	return c.String(http.StatusOK, "api works!")
}

func rdIndex(c echo.Context) error {
	return c.Redirect(http.StatusMovedPermanently, "../")
}
