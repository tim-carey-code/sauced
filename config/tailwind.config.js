module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
    "./app/components/**/*.rb",
    "./app/components/**/*.{erb,haml,html,slim}",
    "./node_modules/flowbite/**/*.js",
  ],

  darkMode: "class",

  plugins: [require("flowbite/plugin"), require("@tailwindcss/typography")],
};
