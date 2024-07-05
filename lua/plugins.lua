return {
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'clang -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' },
--  {'nvim-tree/nvim-web-devicons'}, 
}
