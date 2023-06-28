/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "themes/**/*.html",
    "content/**/*.md",
    "layouts/**/*.html"
  ],
  theme: {
    extend: {
      fontFamily: {
        'sans': ["-apple-system,BlinkMacSystemFont,segoe ui,Roboto,Oxygen-Sans,Ubuntu,Cantarell,helvetica neue,Helvetica,游ゴシック,pingfang sc,STXihei,华文细黑,microsoft yahei,微软雅黑,SimSun,宋体,Heiti,黑体,sans-serif"],
      },
    },
  },
  plugins: [],
}

