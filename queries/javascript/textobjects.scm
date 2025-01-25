;; Matches the inner content of JSX tags
(jsx_element (jsx_opening_element) @tag.inner (jsx_text) @tag.inner (jsx_closing_element))

;; Matches the entire JSX element, including opening and closing tags
(jsx_element) @tag.outer
