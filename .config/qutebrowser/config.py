
c.tabs.position = "top"
c.auto_save.session = True
#c.colors.webpage.darkmode.enabled = True
c.colors.webpage.preferred_color_scheme = "dark"
c.url.searchengines = {"DEFAULT": "https://www.google.com/search?q={}" }

c.content.autoplay = False

c.colors.hints.bg = "#000000"
c.colors.hints.fg = "#3DFBAC"
c.colors.hints.match.fg = "#3DFBAC"

c.fonts.default_family = "Skyhook Mono"

config.load_autoconfig(False)

config.bind(',m', 'spawn --userscript umpv {url}')
