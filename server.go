package main

import (
	"github.com/labstack/echo/v4"
)

func main() {
	e := echo.New()

	// 静的ファイルの提供
	e.Static("/", "public")

	// ルートハンドラの設定
	e.File("/", "public/index.html")

	e.Logger.Fatal(e.Start(":8080"))
}
