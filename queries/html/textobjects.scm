;; Matches the entire tag content (inner part of the tag)
(element (start_tag) @tag.inner (text) @tag.inner (end_tag))

;; Matches the whole tag including its start and end tags
(element) @tag.outer
