return {
  'saghen/blink.cmp',
  version = '1.*',
  opts = {
    keymap = { preset = 'default' },

    appearance = {
      nerd_font_variant = 'normal',
    },

    signature = { enabled = true },

    fuzzy = { implementation = 'prefer_rust_with_warning' },
  },
}
