local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node

return {
	-- Console log
	s("cl", {
		t("console.log("),
		i(1, ""),
		t(");"),
	}),

	-- Função anônima
	s("fn", {
		t("const "),
		i(), -- nome da função removido
		t(" = () => {"),
		i(2, ""), -- corpo da função
		t({ "", "};" }),
	}),

	-- Função normal
	s("fun", {
		t("function "),
		i(1, ""),
		t("("),
		i(2),
		t({ ") {", "\t" }),
		i(3, "// corpo"),
		t({ "", "}" }),
	}),

	-- Estrutura if/else
	s("ife", {
		t("if ("),
		i(1, "condicao"),
		t({ ") {", "\t" }),
		i(2, "// verdadeiro"),
		t({ "", "} else {", "\t" }),
		i(3, "// falso"),
		t({ "", "}" }),
	}),

	-- Import ES6
	s("imp", {
		t("import "),
		i(1, "modulo"),
		t(" from '"),
		i(2, "pacote"),
		t("';"),
	}),

	-- Require (Node.js)
	s("req", {
		t("const "),
		i(1, "modulo"),
		t(" = require('"),
		i(2, "pacote"),
		t("');"),
	}),

	-- Export default
	s("expd", {
		t("export default "),
		i(1, "objeto"),
		t(";"),
	}),

	-- Export nomeado
	s("expn", {
		t("export { "),
		i(1, "objeto"),
		t(" };"),
	}),

	-- Try/catch
	s("try", {
		t({ "try {", "\t" }),
		i(1, "// código"),
		t({ "", "} catch (error) {", "\t" }),
		i(2, "console.error(error);"),
		t({ "", "}" }),
	}),

	-- Express.js - rota básica
	s("expr", {
		t("app."),
		c(1, { t("get"), t("post"), t("put"), t("delete") }),
		t("('"),
		i(2, "/rota"),
		t("', (req, res) => {"),
		t({ "", "\t" }),
		i(3, "res.send('Hello World');"),
		t({ "", "});" }),
	}),
}
