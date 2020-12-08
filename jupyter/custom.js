// Configure CodeMirror
require([
  'nbextensions/vim_binding/vim_binding',   // depends your installation
], function() {
  // Map jj to <Esc>
  CodeMirror.Vim.map("jj", "<Esc>", "insert");
  CodeMirror.Vim.map("-", "$", "normal");
  CodeMirror.Vim.map("-", "$", "visual");
  CodeMirror.Vim.defineOperator("comment_op", function(cm) {
          cm.toggleComment();
      });
  CodeMirror.Vim.mapCommand("gc", "operator", "comment_op", {});
});

