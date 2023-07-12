module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
    "./app/components/**/*.rb",
    "./app/components/**/**/*.rb",
    "./app/components/**/*.{erb,haml,html,slim}",
    "./app/components/**/**/*.{erb,haml,html,slim}",
    "./app/components/**/*.{html.erb}",
  ],

  plugins: [require("daisyui"), require("@tailwindcss/typography")],

  daisyui: {
    themes: [
      {
        mytheme: {
          primary: "#fa8500",

          secondary: "#58c7f3",

          accent: "#f3cc30",

          neutral: "#00011",

          "base-100": "#1a1919",

          info: "#53c0f3",

          success: "#71ead2",

          warning: "#f3cc30",

          error: "#e24056",
        },
      },
    ],
  },
};
