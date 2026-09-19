<?php
// Shared output-escaping helpers.

if (!function_exists('e')) {
	// Escape a value for HTML text/attribute context.
	function e($value) {
		return htmlspecialchars((string)$value, ENT_QUOTES, 'UTF-8');
	}
}

if (!function_exists('js')) {
	// Encode a value as a safe JS literal (quotes included, </script> neutralized).
	function js($value) {
		return json_encode($value, JSON_HEX_TAG | JSON_HEX_AMP | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_UNESCAPED_UNICODE);
	}
}
