[
  (feature_kw)
  (background_kw)
  (rule_kw)
  (scenario_kw)
  (scenario_outline_kw)
  (examples_kw)
] @keyword

(given_group
  [
    (given_step
      (given_line
        (given_kw) @keyword))
    (asterisk_step
      (asterisk_line
        "* " @keyword))
    (and_step
      (and_line
        (and_kw) @keyword))
    (but_step
      (but_line
        (but_kw) @keyword))
  ])

(when_group
  [
    (when_step
      (when_line
        (when_kw) @variable.parameter))
    (asterisk_step
      (asterisk_line
        "* " @variable.parameter))
    (and_step
      (and_line
        (and_kw) @variable.parameter))
    (but_step
      (but_line
        (but_kw) @variable.parameter))
  ])

(then_group
  [
    (then_step
      (then_line
        (then_kw) @type))
    (asterisk_step
      (asterisk_line
        "* " @type))
    (and_step
      (and_line
        (and_kw) @type))
    (but_step
      (but_line
        (but_kw) @type))
  ])

(tag) @tag

(step_param) @variable.parameter

(doc_string) @string.documentation
(media_type) @type

":" @punctuation.delimiter
"|" @punctuation.special

(table_head_row
  (table_col
    (table_cell) @title))

(table_row
  (table_col
    (table_cell) @string))

"language" @property
(language_name) @string
(invalid_language_name) @comment.error

[
  (comment)
  (language)
] @comment
