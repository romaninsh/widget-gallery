define("ace/theme/widget",["require","exports","module","ace/lib/dom"], function(require, exports, module) {

exports.isDark = true;
exports.cssClass = "ace-widget";
exports.cssText = ".ace-widget .ace_gutter {\
background: #25282c;\
color: #C5C8C6\
}\
.ace-widget .ace_print-margin {\
width: 1px;\
background: #25282c\
}\
.ace-widget {\
background-color: #1D1F21;\
color: #C5C8C6\
}\
.ace-widget .ace_cursor {\
color: #AEAFAD\
}\
.ace-widget .ace_marker-layer .ace_selection {\
background: #373B41\
}\
.ace-widget.ace_multiselect .ace_selection.ace_start {\
box-shadow: 0 0 3px 0px #1D1F21;\
}\
.ace-widget .ace_marker-layer .ace_step {\
background: rgb(102, 82, 0)\
}\
.ace-widget .ace_marker-layer .ace_bracket {\
margin: -1px 0 0 -1px;\
border: 1px solid #4B4E55\
}\
.ace-widget .ace_marker-layer .ace_active-line {\
background: #282A2E\
}\
.ace-widget .ace_gutter-active-line {\
background-color: #282A2E\
}\
.ace-widget .ace_marker-layer .ace_selected-word {\
border: 1px solid #373B41\
}\
.ace-widget .ace_invisible {\
color: #4B4E55\
}\
.ace-widget .ace_keyword,\
.ace-widget .ace_meta,\
.ace-widget .ace_storage,\
.ace-widget .ace_storage.ace_type,\
.ace-widget .ace_support.ace_type {\
color: #B294BB\
}\
.ace-widget .ace_keyword.ace_operator {\
color: #8ABEB7\
}\
.ace-widget .ace_constant.ace_character,\
.ace-widget .ace_constant.ace_language,\
.ace-widget .ace_constant.ace_numeric,\
.ace-widget .ace_keyword.ace_other.ace_unit,\
.ace-widget .ace_support.ace_constant,\
.ace-widget .ace_variable.ace_parameter {\
color: #DE935F\
}\
.ace-widget .ace_constant.ace_other {\
color: #CED1CF\
}\
.ace-widget .ace_invalid {\
color: #CED2CF;\
background-color: #DF5F5F\
}\
.ace-widget .ace_invalid.ace_deprecated {\
color: #CED2CF;\
background-color: #B798BF\
}\
.ace-widget .ace_fold {\
background-color: #81A2BE;\
border-color: #C5C8C6\
}\
.ace-widget .ace_entity.ace_name.ace_function,\
.ace-widget .ace_support.ace_function,\
.ace-widget .ace_variable {\
color: #81A2BE\
}\
.ace-widget .ace_support.ace_class,\
.ace-widget .ace_support.ace_type {\
color: #F0C674\
}\
.ace-widget .ace_heading,\
.ace-widget .ace_markup.ace_heading,\
.ace-widget .ace_string {\
color: #B5BD68\
}\
.ace-widget .ace_entity.ace_name.ace_tag,\
.ace-widget .ace_entity.ace_other.ace_attribute-name,\
.ace-widget .ace_meta.ace_tag,\
.ace-widget .ace_string.ace_regexp,\
.ace-widget .ace_variable {\
color: #CC6666\
}\
.ace-widget .ace_comment {\
color: #969896\
}\
.ace-widget .ace_indent-guide {\
background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAAEklEQVQImWNgYGBgYHB3d/8PAAOIAdULw8qMAAAAAElFTkSuQmCC) right repeat-y\
}";

var dom = require("../lib/dom");
dom.importCssString(exports.cssText, exports.cssClass);
});
